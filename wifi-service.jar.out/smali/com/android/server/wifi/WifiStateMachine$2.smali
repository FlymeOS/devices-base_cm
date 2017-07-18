.class Lcom/android/server/wifi/WifiStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1263
    const-string/jumbo v2, "availableArray"

    .line 1262
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1265
    .local v1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "activeArray"

    .line 1264
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1266
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$2;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {v3, v4, v1, v0}, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;-><init>(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const v4, 0x2001d

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1261
    return-void
.end method
