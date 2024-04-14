package com.potato.balbambalbam.entity;

import jakarta.persistence.*;
import lombok.Getter;

@Entity(name = "card_score")
@Getter
public class CardScore {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "highest_score", nullable = false)
    private int highestScore;
    @Column(name = "user_id", nullable = false)
    private Long userId;
    @Column(name = "card_id", nullable = false)
    private Long cardId;

    public CardScore() {
    }

    public CardScore(int highestScore, Long userId, Long cardId) {
        this.highestScore = highestScore;
        this.userId = userId;
        this.cardId = cardId;
    }
}
