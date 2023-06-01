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
            Voornaam Tussenvoegsel Achternaam as Naam
            ,Datum
            ,Rijbewijscategorie
            ,Rijschool
            ,Stad
            ,Uitslag
            from Examinator as Exami
            
            inner join ExamenPerExaminator as EPE
            on EPE.ExaminatorId = Exami.Id

            inner join Examen as Exam
            on EPE.ExamenId = Exam.Id
            
            order by Exami.Naam desc";

        $this->db->query($sql);
        return $this->db->resultSet();
    }
}
