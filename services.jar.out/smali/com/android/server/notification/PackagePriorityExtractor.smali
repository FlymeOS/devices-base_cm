.class public Lcom/android/server/notification/PackagePriorityExtractor;
.super Ljava/lang/Object;
.source "PackagePriorityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImportantPackageExtractor"


# instance fields
.field private mFlymeContext:Landroid/content/Context;

.field private mConfig:Lcom/android/server/notification/RankingConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .prologue

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/PackagePriorityExtractor;->initFlymeExtraFields(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v4, 0x0

    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    .line 34
    :cond_0
    return-object v4

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_2

    .line 39
    return-object v4

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 43
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    .line 42
    invoke-interface {v1, v2, v3}, Lcom/android/server/notification/RankingConfig;->getPackagePriority(Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, "packagePriority":I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/PackagePriorityExtractor;->getFlymePackagePriority(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setPackagePriority(I)V

    .line 46
    return-object v4
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 50
    return-void
.end method

.method private getFlymePackagePriority(Lcom/android/server/notification/NotificationRecord;)I
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/notification/CloudNotificationHelper;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "origPkgName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .local v1, "origPkgUid":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    invoke-interface {v4, v0, v1}, Lcom/android/server/notification/RankingConfig;->getPackagePriority(Ljava/lang/String;I)I

    move-result v2

    .local v2, "packagePriority":I
    return v2

    .end local v1    # "origPkgUid":I
    .end local v2    # "packagePriority":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mFlymeContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v4, v0, v5}, Lcom/android/server/notification/CloudNotificationHelper;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .restart local v1    # "origPkgUid":I
    goto :goto_0
.end method

.method private initFlymeExtraFields(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mFlymeContext:Landroid/content/Context;

    return-void
.end method
