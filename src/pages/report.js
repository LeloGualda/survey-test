import React, { Component } from 'react';
import ReactHighcharts from 'react-highcharts'
import { Nav, Card } from 'react-bootstrap';

class Report extends Component {
  constructor(props) {
    super(props)
    this.state = {
      forms: [],
      form: this.props.match.params.form || null,
      report: null,
    }
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


  componentDidMount() {
    const { callApi, state } = this
    const { form } = state

    callApi("/api/forms")
      .then(res => res.data)
      .then(forms => this.setState({ forms })).then(() => form ?
        callApi("/api/report/" + form)
          .then(res => res.data)
          .then(report => this.setState({ report }))
          .catch(error => console.error(error))
        : null)
      .catch(err => console.log(err));


  }
  render() {
    const { forms, form, report } = this.state;
    let perguntas = []
    if (report) {
      perguntas = [...new Set(report.map(({ pergunta }) => pergunta))]
      
    }

    return <div className="App">
      <header className="App-header">
        <Nav className="forms">{
          forms.map(({ formulario: nome }, i) => <Nav.Item>
            <Nav.Link key={i} className={`form${form === nome ? "-selected" : ""}`}
              href={`/${nome}`}>
              {nome} </Nav.Link>
          </Nav.Item>)
        }
        </Nav>
        <div className="create-form">
          <a href="/create"> CRIAR FORMULARIO </a>
        </div>
      </header>

      <Card style={{ width: '100%',alignItems:'center' }}>
        {report ? <Card.Body> {perguntas.map((pergunta, i) => <ReactHighcharts key={'p' + i}
         config={{
          chart: {
            'type': 'column'
          },
          yAxis: [{
            min:0,
            title: {
              "text": '',
            }
          }],
          xAxis: [{
            "categories": report.reduce( (state, v) => v.pergunta == pergunta ? [...state,v.alternativa]: state,[]),
            "crosshair": true
          }],
          series:[{
            data:report.reduce( (state, v) => v.pergunta == pergunta ? [...state,v.quantidade]: state,[])
          }]  ,
          title:{
              text:pergunta
          },
          legend:{
            enabled:false
          },
          plotOptions:{
            series:{
              dataLabels:{
                  enabled:true
              }
            }
          }

        }} />)}



        </Card.Body> : null
        }    </Card>

    </div>
  }
}

export default Report;
