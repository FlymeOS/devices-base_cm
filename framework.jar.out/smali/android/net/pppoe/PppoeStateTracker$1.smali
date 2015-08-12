.class Landroid/net/pppoe/PppoeStateTracker$1;
.super Landroid/os/Handler;
.source "PppoeStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/PppoeStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/pppoe/PppoeStateTracker;


# direct methods
.method constructor <init>(Landroid/net/pppoe/PppoeStateTracker;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    # invokes: Landroid/net/pppoe/PppoeStateTracker;->handleLocalMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/pppoe/PppoeStateTracker;->access$000(Landroid/net/pppoe/PppoeStateTracker;Landroid/os/Message;)V

    .line 120
    return-void
.end method
