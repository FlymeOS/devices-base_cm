.class Lcom/android/server/notification/MzDoNotDisturbHelper$1;
.super Landroid/database/ContentObserver;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/MzDoNotDisturbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/MzDoNotDisturbHelper;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/MzDoNotDisturbHelper;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get1()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "zenMode":I
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get4(Lcom/android/server/notification/MzDoNotDisturbHelper;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1, v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-set1(Lcom/android/server/notification/MzDoNotDisturbHelper;I)I

    .line 88
    const-string/jumbo v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MzDoNotDisturbHelper onChange mZenMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get4(Lcom/android/server/notification/MzDoNotDisturbHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get4(Lcom/android/server/notification/MzDoNotDisturbHelper;)I

    move-result v1

    if-nez v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-set0(Lcom/android/server/notification/MzDoNotDisturbHelper;J)J

    .line 97
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get2(Lcom/android/server/notification/MzDoNotDisturbHelper;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap1(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap0(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    .line 80
    .end local v0    # "zenMode":I
    :cond_4
    :goto_0
    return-void

    .line 102
    :cond_5
    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$1;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap0(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    goto :goto_0
.end method
