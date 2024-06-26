{
	"info": {
		"_postman_id": "b332aec5-2b36-42a9-b7df-0705b8695cb0",
		"name": "13-api-empresas",
		"description": "Documentação do API-EMPRESAS.",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
		"_exporter_id": "6317911"
	},
	"item": [
		{
			"name": "Autenticacao",
			"item": [
				{
					"name": "Registrar",
					"request": {
						"auth": {
							"type": "noauth"
						},
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"nome\": \"gustavo3\",\n    \"email\": \"gustavo3@teste.com\",\n    \"senha\": \"1234\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/auth/registro",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"auth",
								"registro"
							]
						},
						"description": "Funcionalidade para registrar um usuário."
					},
					"response": []
				},
				{
					"name": "Login",
					"request": {
						"auth": {
							"type": "noauth"
						},
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"email\": \"gustavo@teste.com\",\n    \"senha\": \"12345678\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/auth/login",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"auth",
								"login"
							]
						},
						"description": "Funcionalidade para realizar o login e pegar o token de autenticação. Utilizar o token no header Authorization.\n\nex. Bearer token"
					},
					"response": []
				}
			],
			"description": "Funcionalidades de segurança.",
			"auth": {
				"type": "noauth"
			},
			"event": [
				{
					"listen": "prerequest",
					"script": {
						"type": "text/javascript",
						"packages": {},
						"exec": [
							""
						]
					}
				},
				{
					"listen": "test",
					"script": {
						"type": "text/javascript",
						"packages": {},
						"exec": [
							""
						]
					}
				}
			]
		},
		{
			"name": "Cargos",
			"item": [
				{
					"name": "Cargos",
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "Authorization",
								"value": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Imd1c3Rhdm9AdGVzdGUuY29tIiwiaWF0IjoxNzE2MjUxODIwLCJleHAiOjE3MTYyNTI0MjB9.5pT2uo7N4VoFyyS42Tzj9JOWfc9lGylMq0z5hJL6318",
								"type": "text",
								"disabled": true
							}
						],
						"url": {
							"raw": "{{apiUrl}}/cargos",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"cargos"
							]
						},
						"description": "Buscar todos os cargos."
					},
					"response": []
				},
				{
					"name": "Cargos",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"nome\": \"teste\",\n    \"salario\": 1500\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/cargos",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"cargos"
							]
						},
						"description": "Criar um cargo."
					},
					"response": []
				},
				{
					"name": "Cargos ID",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/cargos/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"cargos",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "6645478cdf07ce243e9ec660"
								}
							]
						},
						"description": "Buscar cargo por ID."
					},
					"response": []
				},
				{
					"name": "Cargos",
					"request": {
						"method": "PUT",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"nome\": \"ADMINSTRADOR ATUALIZADO ASDASDASDASD2\",\n    \"descricao\": \"TESTANDO\",\n    \"salario\": 1500\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/cargos/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"cargos",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "66429db2b496bdc61df591c4"
								}
							]
						},
						"description": "Atualizar um cargo."
					},
					"response": []
				},
				{
					"name": "Cargos",
					"request": {
						"method": "DELETE",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/cargos/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"cargos",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "6642b092de5d42e1753ca904"
								}
							]
						},
						"description": "Excluir um cargo."
					},
					"response": []
				}
			],
			"description": "Funcionalidades de CRUD para a entidade cargos."
		},
		{
			"name": "Departamentos",
			"item": [
				{
					"name": "Departamentos",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/departamentos",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"departamentos"
							]
						},
						"description": "Buscar todos os departamentos."
					},
					"response": []
				},
				{
					"name": "Departamentos",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"nome\": \"RH\",\n    \"descricao\": \"teste\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/departamentos",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"departamentos"
							]
						},
						"description": "Cadastrar um departamento."
					},
					"response": []
				},
				{
					"name": "Departamentos ID",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/departamentos/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"departamentos",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "664692c6cdaa5f69e092a2dd"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Departamentos",
					"request": {
						"method": "PUT",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"nome\": \"RH Atualizado\",\n    \"descricao\": \"TESTANDO\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/departamentos/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"departamentos",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "6646933bcdaa5f69e092a2e2"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Departamentos",
					"request": {
						"method": "DELETE",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/departamentos/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"departamentos",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "664695243e533d5f0d4576be"
								}
							]
						}
					},
					"response": []
				}
			],
			"description": "Funcionalidade de CRUD para a entidade Departamentos."
		},
		{
			"name": "Funcionarios",
			"item": [
				{
					"name": "Funcionarios",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/funcionarios",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"funcionarios"
							]
						}
					},
					"response": []
				},
				{
					"name": "Funcionarios",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"nome\": \"RH\",\n    \"cpf\": \"00000000011\",\n    \"email\": \"teste@teste.com\",\n    \"telefone\": \"61900000001\",\n    \"dataContratacao\": \"2023-04-02\",\n    \"dataNascimento\": \"1990-10-30\",\n    \"genero\": \"Feminino\",\n    \"endereco\": {\n        \"cep\": \"7200000\",\n        \"uf\": \"DF\",\n        \"logradouro\": \"TESTE\",\n        \"localidade\": \"TESTE\",\n        \"bairro\": \"CEILANDIA\",\n        \"numero\": \"12\",\n        \"complemento\": \"CASA\"\n    },\n    \"cargo\": \"66429dfeb496bdc61df591c7\",\n    \"departamento\": \"6646933bcdaa5f69e092a2e2\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/funcionarios",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"funcionarios"
							]
						}
					},
					"response": []
				},
				{
					"name": "Funcionarios ID",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/funcionarios/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"funcionarios",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "664fcb10f59cebf133675f70"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Funcionarios",
					"request": {
						"method": "PUT",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"nome\": \"TESTE ATUALIZADO\",\n    \"cpf\": \"00000000011\",\n    \"email\": \"teste@teste.com\",\n    \"telefone\": \"61900000001\",\n    \"dataContratacao\": \"2023-04-02\",\n    \"dataNascimento\": \"1990-10-30\",\n    \"genero\": \"Feminino\",\n    \"endereco\": {\n        \"cep\": \"7200000\",\n        \"uf\": \"DF\",\n        \"logradouro\": \"TESTE\",\n        \"localidade\": \"TESTE\",\n        \"bairro\": \"CEILANDIA\",\n        \"numero\": \"12\",\n        \"complemento\": \"CASA\"\n    },\n    \"cargo\": \"66429dfeb496bdc61df591c7\",\n    \"departamento\": \"6646933bcdaa5f69e092a2e2\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/funcionarios/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"funcionarios",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "6646a9bbe110188bda9f5727"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Funcionarios",
					"request": {
						"method": "DELETE",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/funcionarios/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"funcionarios",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "6646a9bbe110188bda9f5727"
								}
							]
						}
					},
					"response": []
				}
			]
		},
		{
			"name": "Projetos",
			"item": [
				{
					"name": "Projetos",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/projetos",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"projetos"
							]
						}
					},
					"response": []
				},
				{
					"name": "Projetos",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"nome\": \"Projeto Cliente Digital\",\n    \"descricao\": \"Projeto para transformar nossos clientes em digitais\",\n    \"dataInicio\": \"2024-04-02\",\n    \"dataFim\": \"2025-10-30\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/projetos",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"projetos"
							]
						}
					},
					"response": []
				},
				{
					"name": "Projetos ID",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/projetos/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"projetos",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "664fcb10f59cebf133675f70"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Projetos",
					"request": {
						"method": "PUT",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"nome\": \"Projeto Cliente Digital\",\n    \"descricao\": \"Projeto para transformar nossos clientes em digitais\",\n    \"dataInicio\": \"2024-04-02\",\n    \"dataFim\": \"2025-10-30\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/projetos/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"projetos",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "6646a9bbe110188bda9f5727"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Projetos",
					"request": {
						"method": "DELETE",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/projetos/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"projetos",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "6646a9bbe110188bda9f5727"
								}
							]
						}
					},
					"response": []
				}
			]
		},
		{
			"name": "Tarefas",
			"item": [
				{
					"name": "Tarefas",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/tarefas",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"tarefas"
							]
						}
					},
					"response": []
				},
				{
					"name": "Tarefas",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"titulo\": \"Projeto Cliente Digital\",\n    \"descricao\": \"Projeto para transformar nossos clientes em digitais\",\n    \"dataInicio\": \"2024-04-02\",\n    \"dataFim\": \"2025-10-30\",\n    \"funcionario\": \"664fcb10f59cebf133675f70\",\n    \"projeto\": \"664fccf5f59cebf133675f79\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/tarefas",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"tarefas"
							]
						}
					},
					"response": []
				},
				{
					"name": "Tarefas",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/tarefas/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"tarefas",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "664fcb10f59cebf133675f70"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Tarefas",
					"request": {
						"method": "PUT",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"titulo\": \"Projeto Cliente Digital\",\n    \"descricao\": \"Projeto para transformar nossos clientes em digitais\",\n    \"dataInicio\": \"2024-04-02\",\n    \"dataFim\": \"2025-10-30\",\n    \"funcionario\": \"664fcb10f59cebf133675f70\",\n    \"projeto\": \"664fccf5f59cebf133675f79\"\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "{{apiUrl}}/tarefas/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"tarefas",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "6646a9bbe110188bda9f5727"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Tarefas",
					"request": {
						"method": "DELETE",
						"header": [],
						"url": {
							"raw": "{{apiUrl}}/tarefas/:id",
							"host": [
								"{{apiUrl}}"
							],
							"path": [
								"tarefas",
								":id"
							],
							"variable": [
								{
									"key": "id",
									"value": "6646a9bbe110188bda9f5727"
								}
							]
						}
					},
					"response": []
				}
			]
		}
	],
	"auth": {
		"type": "bearer",
		"bearer": [
			{
				"key": "token",
				"value": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJub21lIjoiZ3VzdGF2byIsImVtYWlsIjoiZ3VzdGF2b0B0ZXN0ZS5jb20iLCJpYXQiOjE3MTcwMjM0NDIsImV4cCI6MTcxNzAyNDA0Mn0.z44GKkAwu1xsFVF3nTLnIeYShCtn4eSksK7hOfMEnBk",
				"type": "string"
			}
		]
	},
	"event": [
		{
			"listen": "prerequest",
			"script": {
				"type": "text/javascript",
				"packages": {},
				"exec": [
					""
				]
			}
		},
		{
			"listen": "test",
			"script": {
				"type": "text/javascript",
				"packages": {},
				"exec": [
					""
				]
			}
		}
	],
	"variable": [
		{
			"key": "apiUrl",
			"value": "http://localhost:3000",
			"type": "string"
		}
	]
}
