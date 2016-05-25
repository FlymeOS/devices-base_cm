.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .locals 10
    .param p1, "left"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "right"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v0

    .line 29
    .local v0, "leftPackagePriority":I
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v3

    .line 30
    .local v3, "rightPackagePriority":I
    if-eq v0, v3, :cond_0

    .line 32
    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    .line 50
    :goto_0
    return v6

    .line 35
    :cond_0
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v2

    .line 36
    .local v2, "leftScore":I
    iget-object v6, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v5

    .line 37
    .local v5, "rightScore":I
    if-eq v2, v5, :cond_1

    .line 39
    invoke-static {v2, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v1

    .line 43
    .local v1, "leftPeople":F
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v4

    .line 44
    .local v4, "rightPeople":F
    cmpl-float v6, v1, v4

    if-eqz v6, :cond_2

    .line 46
    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Long;->compare(JJ)I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method
