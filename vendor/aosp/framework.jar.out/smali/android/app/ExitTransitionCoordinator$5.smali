.class Landroid/app/ExitTransitionCoordinator$5;
.super Landroid/os/Handler;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 230
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v1, 0x1

    # setter for: Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z
    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->access$502(Landroid/app/ExitTransitionCoordinator;Z)Z

    .line 231
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$5;->this$0:Landroid/app/ExitTransitionCoordinator;

    # invokes: Landroid/app/ExitTransitionCoordinator;->finish()V
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$600(Landroid/app/ExitTransitionCoordinator;)V

    .line 232
    return-void
.end method
