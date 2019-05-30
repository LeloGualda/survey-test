import React from 'react'
import Alternativa from './alternativas'
import { Form,Alert } from 'react-bootstrap'

function Pergunta({ pergunta = "", alternativas = [],value,onChange,error = null,recomendacao }) {
  return <Form.Group className="pergunta">
    {
      error ?<Alert  variant={"danger"}>
      {error}
    </Alert>:null
    }
    <Form.Label  required nome={pergunta} value={pergunta}> {pergunta}</Form.Label>
    <Alternativa alternativas={alternativas}  value={value} onChange={(value) => onChange(pergunta,value)} />

    {recomendacao ? <Alert  variant={"info"}>
      {recomendacao}
      </Alert> : null
    }
  </Form.Group>
}

export default Pergunta;
