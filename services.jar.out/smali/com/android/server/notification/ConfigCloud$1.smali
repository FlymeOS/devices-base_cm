.class Lcom/android/server/notification/ConfigCloud$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfigCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ConfigCloud;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ConfigCloud;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ConfigCloud;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ConfigCloud;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/notification/ConfigCloud$1;->this$0:Lcom/android/server/notification/ConfigCloud;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-static {}, Lcom/android/server/notification/ConfigCloud;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/server/notification/ConfigCloud$1;->this$0:Lcom/android/server/notification/ConfigCloud;

    invoke-static {v0}, Lcom/android/server/notification/ConfigCloud;->-wrap0(Lcom/android/server/notification/ConfigCloud;)V

    .line 54
    return-void
.end method
