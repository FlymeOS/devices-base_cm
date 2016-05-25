.class Lcom/android/server/notification/DowntimeConditionProvider$3;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/DowntimeConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/DowntimeConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider$3;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method onZenModeChanged()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider$3;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # getter for: Lcom/android/server/notification/DowntimeConditionProvider;->mConditionClearing:Z
    invoke-static {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->access$1000(Lcom/android/server/notification/DowntimeConditionProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider$3;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->isZenOff()Z
    invoke-static {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->access$1100(Lcom/android/server/notification/DowntimeConditionProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider$3;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->evaluateAutotrigger()V
    invoke-static {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->access$300(Lcom/android/server/notification/DowntimeConditionProvider;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider$3;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/notification/DowntimeConditionProvider;->mConditionClearing:Z
    invoke-static {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->access$1002(Lcom/android/server/notification/DowntimeConditionProvider;Z)Z

    .line 375
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider$3;->this$0:Lcom/android/server/notification/DowntimeConditionProvider;

    # invokes: Lcom/android/server/notification/DowntimeConditionProvider;->evaluateSubscriptions()V
    invoke-static {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->access$700(Lcom/android/server/notification/DowntimeConditionProvider;)V

    .line 376
    return-void
.end method
