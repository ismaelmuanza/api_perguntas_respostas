const database = require('../../database/database')

class Question {

    // select all questions model
    async selectAllQuestionModel () {
        try {
            const query = await database
                .select(['id','question', 'description', 'createdAt', 'updatedAt'])
                .table('questions')
 
                return query
        } catch (err) {
            console.log('ERRO AO SELECIONAR TODAS AS QUESTIONS-MODEL: ', err)
        }
    }

    // select a question model
    async selectAQuestionModel (id) {
        try {
            const query = await database
                .select(['id','question', 'description', 'createdAt', 'updatedAt'])
                .table('questions').where({id})
 
               return query
        } catch (err) {
            console.log('ERRO AO SELECIONA  A QUESTION-MODEL: ', err)
        }
    }

    // insert question model
    async insertQuestionModel (datas) {
        try {
            await database.insert(datas).table('questions')
        } catch (err) {
            console.log('ERRO AO INSERIR UMA QUESTION-MODEL: ', err)
        }
    }
}

module.exports = new Question()