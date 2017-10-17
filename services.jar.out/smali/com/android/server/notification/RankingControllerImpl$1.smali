.class Lcom/android/server/notification/RankingControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RankingControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/RankingControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/RankingControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/notification/RankingControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/RankingControllerImpl;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl$1;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$1;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/RankingControllerImpl;->-set0(Lcom/android/server/notification/RankingControllerImpl;J)J

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$1;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v1}, Lcom/android/server/notification/RankingControllerImpl;->-get2(Lcom/android/server/notification/RankingControllerImpl;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$1;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/RankingControllerImpl;->-set0(Lcom/android/server/notification/RankingControllerImpl;J)J

    .line 339
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$1;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v1}, Lcom/android/server/notification/RankingControllerImpl;->-wrap2(Lcom/android/server/notification/RankingControllerImpl;)V

    goto :goto_0
.end method
