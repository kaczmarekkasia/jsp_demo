package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Formula;

import javax.persistence.*;
import java.util.Set;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity //to jest encja bazodanowa

public class Student implements IBaseEntity {
    @Id
    // dodatkowa tabela "hibernate_sequence" - sztuczne identyfikatory
    // identity - generuj identyfikator z bazy, pobierz go i przypisz do pola
    // sequence - pobierz identyfikator, przypisz go do pola, zapisz obiekt
    // table    -
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(nullable = false)
    private String name;
    private String surname;
    private int age; // "not null"
    private boolean alive; // "not null"

    @Formula(value = "(SELECT AVG(g.value) FROM Grade g WHERE g.student_id = id)")
    private Double average; // nullable - nie ma "not null"

    @EqualsAndHashCode.Exclude
    @OneToMany(mappedBy = "student", fetch = FetchType.EAGER)
    private Set<Grade> gradeList;

    public Student(String name, String surname, int age, boolean alive) {
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.alive = alive;
    }

    public Student(Long editedStudentId, String name, String surname, int age, boolean isAlive) {
        this.id = editedStudentId;
        this.name = name;
        this.surname = surname;
        this.age = age;
        this.alive = isAlive;
    }

// wewnątrz modelu może istnieć tylko jedna relacja fetch type eager z listą
}
