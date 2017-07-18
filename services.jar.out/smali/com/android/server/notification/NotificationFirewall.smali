.class public interface abstract Lcom/android/server/notification/NotificationFirewall;
.super Ljava/lang/Object;
.source "NotificationFirewall.java"


# virtual methods
.method public abstract decreaseScore(Lmeizu/notification/RankingDaily;)F
.end method

.method public abstract getRankingScoreBase(Ljava/lang/String;II)F
.end method

.method public abstract increaseScore(Lmeizu/notification/RankingDaily;)F
.end method

.method public abstract initialize(Landroid/content/Context;Landroid/os/Looper;)V
.end method

.method public abstract interceptNotification(Landroid/service/notification/StatusBarNotification;ZZ)Z
.end method
