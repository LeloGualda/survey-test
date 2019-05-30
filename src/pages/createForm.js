import React, { Component } from 'react'
import {Form,Button,FormControl } from 'react-bootstrap'

import '../App.css'



const TextForm = ({ name = "", label,value,onChange}) => <Form.Group className="text-form">
  <Form.Label> {label || name} </Form.Label>
  <Form.Control  required type="text" name={name} value={value} onChange={onChange}/>
</Form.Group>

export default class CreatePAge extends Component {
  constructor(props) {
    super(props)
    this.state = {
      name: '',
      perguntas: [{
        pergunta: "",
        alternativas: [],
        recomendacoes:[]
      }],
      erros:[],
      validated:false
    }
    this.addPergunta = this.addPergunta.bind(this)
    this.setName = this.setName.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  setName({target}){
    this.setState({nome:target.value})
  }
  addPergunta() {
    let {perguntas} = this.state
    perguntas.push({
      pergunta: "",
      alternativas: [""],
      recomendacoes:[]
    })    
    this.setState({perguntas})
  }

  removePergunta(pergunta){

  }
  addAlternativa(pergunta) {

  }
  addRecomendacao() {

  }
  handleSubmit(event) {
    const form = event.currentTarget;
    if (form.checkValidity() === false) {
      event.preventDefault();
      event.stopPropagation();
    }
    this.setState({ validated: true });
  }
  render() {
    const {addPergunta,state,setName} = this
    const {perguntas,validated,nome} = state
    return <div className="App">
      <header className="App-header">
        <div className="forms in-create-form">
          <div className="create-form">
            <a href="/"> VOLTAR SEM SALVAR</a>
          </div>
        </div>
      </header>

      <div className="add-form">
        <Form   validated={validated} onSubmit={e => this.handleSubmit(e)} >
          <TextForm 
          name="name" value={nome} onChange={setName}   label="Nome do formulario:" />
           <div>
            {
              perguntas.map((pergunta,i) => {
                console.log(pergunta);
                return <TextForm key={'p' + i} name={`pergunta[${i}]`}  value={i} value={pergunta.pergunta} label={"Pergunta:"} />
              // <TextForm key={'p' + i} name="Pergunta:" label={pergunta} />
            })
            }
          </div> 
          <Button variant="primary" onClick={addPergunta}>         
            Adicionar Pergunta
            </Button>
            <Button variant="secondary" type="submit">
            Submit
          </Button>
        </Form>
      </div>
    </div>
  }
}
