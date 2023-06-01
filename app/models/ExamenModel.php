<?php

class ExamenModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getExamnes()
    {
        $sql = "SELECT
            Voornaam
            ,Mobiel
            ,PakketNaam
            ,AantalLessen
            ,Prijs
            ,StartDatumRijlessen
            ,DatumRijbewijsBehaald
            from Examinator as Exami
            
            inner join ExamenPerExaminator as EPE
            on EPE.ExaminatorId = Exami.Id

            inner join Examen as Exam
            on EPE.ExamenId = Exam.Id
            
            order by LPLP.StartDatumRijlessen asc";

        $this->db->query($sql);
        return $this->db->resultSet();
    }
}
