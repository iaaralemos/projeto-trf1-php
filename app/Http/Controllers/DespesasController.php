<?php

namespace App\Http\Controllers;

use App\Despesa;

class DespesasController extends Controller {
    
    public function index() {
        return Despesa::all(); #voltar todas as depesas que tem na tabela
    }
}