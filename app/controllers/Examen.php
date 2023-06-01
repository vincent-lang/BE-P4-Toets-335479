<?php

class Examen extends BaseController
{

    private $ExamenInfo;

    public function __construct()
    {
        $this->ExamenInfo = $this->model('ExamenModel');
    }

    public function index()
    {
        $examen = $this->ExamenInfo->getExamens();

        $rows = '';
        foreach ($examen as $result) {
            $rows .= "<tr>
                        <td>$result->Naam</td>
                        <td>$result->Datum</td>
                        <td>$result->Rijbewijscategorie</td>
                        <td>$result->Rijschool</td>
                        <td>$result->Stad</td>
                        <td>$result->Uitslag</td>
                    </tr>";
        }

        $data = [
            'title' => 'Overzicht Afgenomen Examens Examinatoren',
            'rows' => $rows
        ];

        $this->view('examen/index', $data);
    }
}