import React, { Component } from 'react';
import { Form } from 'react-bootstrap'


class Alternativas extends Component { 
    render() {
        const { value:resp = {value:''},alternativas = [], onChange} = this.props
        const {value = ""} = resp
        return (
            <Form.Group className="alternativas">
                {
                    alternativas.map(({descricao:text,alternativa,id_alternativa}) => <Form.Check  required type="radio"
                        key={alternativa}
                        label={text}
                        checked={alternativa === value} value={alternativa} onChange={({ target }) => onChange({value:target.value,id:id_alternativa})} />
                    )
                }
            </Form.Group>
        );
    }
}

export default Alternativas;
