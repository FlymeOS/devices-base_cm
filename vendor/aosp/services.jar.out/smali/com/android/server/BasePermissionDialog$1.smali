.class Lcom/android/server/BasePermissionDialog$1;
.super Landroid/os/Handler;
.source "BasePermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BasePermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BasePermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/BasePermissionDialog;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/BasePermissionDialog$1;->this$0:Lcom/android/server/BasePermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/BasePermissionDialog$1;->this$0:Lcom/android/server/BasePermissionDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/BasePermissionDialog;->mConsuming:Z
    invoke-static {v0, v1}, Lcom/android/server/BasePermissionDialog;->access$002(Lcom/android/server/BasePermissionDialog;Z)Z

    .line 78
    iget-object v0, p0, Lcom/android/server/BasePermissionDialog$1;->this$0:Lcom/android/server/BasePermissionDialog;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/BasePermissionDialog;->setEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BasePermissionDialog;->access$100(Lcom/android/server/BasePermissionDialog;Z)V

    .line 80
    :cond_0
    return-void
.end method
