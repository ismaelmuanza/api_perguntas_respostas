const express = require('express')
const QuestionsController=require( '../../app/controllers/QuestionsController' )
const Question=require( '../../app/models/Question' )
const route = express.Router()

route.post('/question', QuestionsController.createQuestion)
route.get('/questions', QuestionsController.readAllQuestion)
route.get('/question/:id', QuestionsController.readAQuestion)

module.exports = route