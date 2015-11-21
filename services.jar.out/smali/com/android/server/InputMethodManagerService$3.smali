.class Lcom/android/server/InputMethodManagerService$3;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$3;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 667
    return-void
.end method
