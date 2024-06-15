const express = require('express'); // Importa o framework Express
const router = express.Router(); // Cria um objeto de roteamento usando o Express

// Importa o controlador responsável pela lógica de autenticação
const AutenticacaoController = require('../controllers/AutenticacaoController');

// Importa os validadores para garantir a integridade dos dados
const { validarUsuario, validarLogin } = require('../validators/AutenticacaoValidator');

// Define as rotas para registrar um novo usuário e para fazer login
router.post('/auth/registrar', validarUsuario, AutenticacaoController.registrar);
router.post('/auth/login', validarLogin, AutenticacaoController.login);

module.exports = router; // Exporta o roteador configurado para uso em outros arquivos
