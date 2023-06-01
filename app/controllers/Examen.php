<?php

class Examen extends BaseController
{

    private $ExamenInfo;

    public function __construct()
    {
        $this->ExamenInfo = $this->model('LeerlingModel');
    }

    public function index()
    {
        $examen = $this->ExamenInfo->getExamens();

        $rows = '';
        foreach ($examen as $result) {
            $rows .= "<tr>
                        <td>$result->Voornaam</td>
                        <td>$result->Mobiel</td>
                        <td>$result->PakketNaam</td>
                        <td>$result->AantalLessen</td>
                        <td>$result->Prijs</td>
                        <td>$result->StartDatumRijlessen</td>
                        <td>$result->DatumRijbewijsBehaald</td>
                    </tr>";
        }

        $data = [
            'title' => 'Overzicht Afgenomen Examens Examinatoren',
            'rows' => $rows
        ];

        $this->view('Leerling/index', $data);
    }
}