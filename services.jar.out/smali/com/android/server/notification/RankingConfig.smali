.class public interface abstract Lcom/android/server/notification/RankingConfig;
.super Ljava/lang/Object;
.source "RankingConfig.java"


# virtual methods
.method public abstract getPackagePeekable(Ljava/lang/String;I)Z
.end method

.method public abstract getPackagePriority(Ljava/lang/String;I)I
.end method

.method public abstract getPackageVisibilityOverride(Ljava/lang/String;I)I
.end method

.method public abstract getShowNotificationForPackageOnKeyguard(Ljava/lang/String;I)I
.end method

.method public abstract setPackagePeekable(Ljava/lang/String;IZ)V
.end method

.method public abstract setPackagePriority(Ljava/lang/String;II)V
.end method

.method public abstract setPackageVisibilityOverride(Ljava/lang/String;II)V
.end method

.method public abstract setShowNotificationForPackageOnKeyguard(Ljava/lang/String;II)V
.end method

.method public abstract addPackageClickNumber(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public abstract addPackageRemoveByUserNumber(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public abstract addPackageSendNumber(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public abstract getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F
.end method

.method public abstract getPackageClickPercentage(Ljava/lang/String;Ljava/lang/String;)F
.end method

.method public abstract getPackageHeadsUpVisibility(Ljava/lang/String;I)I
.end method

.method public abstract getPackageRemindEnable(Ljava/lang/String;I)Z
.end method

.method public abstract getPackageScore(Ljava/lang/String;Ljava/lang/String;)F
.end method

.method public abstract setPackageHeadsUpVisibility(Ljava/lang/String;II)V
.end method

.method public abstract setPackageRemindEnable(Ljava/lang/String;IZ)V
.end method
