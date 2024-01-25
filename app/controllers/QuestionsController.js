const Question = require('../models/Question')

class QuestionController {

    // read all questions controller
    async readAllQuestion (req, res) {
        try {

            const questions = await Question.selectAllQuestionModel()
            if(questions === undefined) {
                res.status(501)
                res.json({msg: 'ERRO INTERNO, VERIFIQUE A CONEXÂO COM O BANCO.'})
                return
            }
    
            if(questions !== undefined && questions.length < 1) {
                res.status(200)
                res.json({msg: 'Sem Nenhum Questão na base de dados.'})
                return
            }
    
            res.status(200)
            res.json(questions)

        } catch (err) {
            console.log('ERRO AO SELECIONAR TODAS AS QUESTIONS-CONTROLLER: ', err)
        }

    }

       // read a question controller
       async readAQuestion (req, res) {
           try {

            let id = req.params.id

            if(isNaN(id) || id === '' || id == undefined) {
                res.status(400)
                res.json({error: 'O IDE PRECISA SER UM NÚMRO INTEIRO.'})
                return

            }

            id = parseInt(id)

            const question = await Question.selectAQuestionModel(id)

            if(question === undefined) {
                res.status(501)
                res.json({error: 'ERRO INTERNO, VERIFIQUE A CONEXÃO COM O BANCO DE DADOS.'})
                return
            }
    
            if(question !== undefined && question.length < 1) {
                res.status(404)
                res.json({msg: 'Questão não encontrada.'})
                return
            }
    
            res.status(200)
            res.json(question)

           } catch (err) {
            console.log('ERRO AO SELECIONAR TODAS AS QUESTIONS-CONTROLLER: ', err)
           }

    }

    // create a question controller
    async createQuestion (req, res) {
        try {
             const {question, description} = req.body

            if(question.length < 5 || description.length < 5) {
                res.sendStatus(400)
                return
            }

            const datas = {question, description}

            await Question.insertQuestionModel(datas)

            res.status(201)
            res.json(datas)

        } catch (e) {
            console.log('ERRO AO CRIAR UMA QUESTION-CONTROLLER')
        }
    }
}

module.exports = new QuestionController()