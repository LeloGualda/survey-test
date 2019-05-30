import React, { Component } from 'react';
import Pergunta from './Component/pergunta'
import { Form, Button,Alert,Nav } from 'react-bootstrap';

import './App.css';
import { stat } from 'fs';

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      forms: [],
      submit: false,
      form: this.props.match.params.form || null,
      perguntas: null,
      respostas: {},
      recomendacoes:[],
      error: ""
    }
    this.errorSubmit = 'O formulário já foi preenchido'
    this.onChangeValue = this.onChangeValue.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }
  callApi = async (url) => {
    try {
      const response = await fetch(url, { mode: 'no-cors' });
      const body = await response.json();
      if (response.status !== 200) throw Error(body.message);
      return body;
    } catch (error) {
      console.error(error)
    }
  };

  handleSubmit(event) {
    event.preventDefault();
    const { form, respostas, perguntas, submit } = this.state
    if (!submit) {
      let valid = true;
      perguntas.forEach(({ pergunta }) => {
        if (valid) {
          valid = respostas[pergunta] ? true : false
          if (valid) {

          } else {
            this.setState({ error: pergunta })
          }
        }
      })
      if (valid) {
        const url = `/api/response?respostas=` + encodeURI((JSON.stringify(Object.keys(respostas).map(pergunta => respostas[pergunta].id))))
        this.callApi(url)
          .then(rest => rest.data)
          .then(recomendacoes => {
            this.setState({recomendacoes,submit:true,error:''})
          })
      }
    } else {
        this.setState({error:this.errorSubmit})
    }
  }


  onChangeValue(pergunta, value) {
    let { respostas } = this.state;
    respostas[pergunta] = value
    this.setState({ respostas })
  }
  componentDidMount() {
    const { callApi, state } = this
    const { form } = state

    callApi("/api/forms")
      .then(res => res.data)
      .then(forms => this.setState({ forms })).then(() => form ?
        callApi("/api/form/" + form)
          .then(res => res.data)
          .then(perguntas => this.setState({ perguntas }))
          .catch(error => console.error(error))
        : null)
      .catch(err => console.log(err));
  
      
  }
  render() {
    const { forms, form, perguntas, respostas, error,recomendacoes } = this.state;

    return <div className="App">
      <header className="App-header">
        <Nav className="forms">{
          forms.map(({ formulario: nome }, i) =><Nav.Item>
              {
                form === nome ? <Nav.Link key={nome} 
                      className={`form-selected active`}
                href={`/report/${nome}`}>
                Gerar REPORT: {nome} </Nav.Link>:
                <Nav.Link key={nome} className={`form`}href={`/${nome}`}>{nome} </Nav.Link>
              }

            </Nav.Item>

            )
        }
        </Nav>
        <div className="create-form">
          <a href="/create"> CRIAR FORMULARIO </a>
        </div>
      </header>
      {perguntas ? <Form onSubmit={this.handleSubmit}>
        <div className="title">
          <label nome={form} value={form}> {form} </label>
        </div>

        {
      error  == this.errorSubmit? <Alert  variant={"danger"}>
      {error}
    </Alert>:null
    }
        {perguntas.map(({ pergunta, alternativas }, i) => <Pergunta
          key={`pergunta-${i}`}
          error={error == pergunta ? `A pergunta "${error}" é obrigatória` : null}
          pergunta={pergunta}
          onChange={this.onChangeValue}
          recomendacao={recomendacoes.reduce( ( state, {id,recomendacao}) => (respostas[pergunta].id == id && recomendacao[0]) ? 
                  recomendacao[0].descricao : state
            ,null )}
          value={respostas[pergunta] || undefined}
          alternativas={alternativas} />
        )}
        <Button variant="primary" type="submit">
          Submit
          </Button>
      </Form> : null}
    </div>
  }
}

export default App;
