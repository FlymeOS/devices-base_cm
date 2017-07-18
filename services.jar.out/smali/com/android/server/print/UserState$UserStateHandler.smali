.class final Lcom/android/server/print/UserState$UserStateHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserStateHandler"
.end annotation


# static fields
.field public static final MSG_DISPATCH_PRINT_JOB_STATE_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/print/UserState;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    .line 917
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 916
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 922
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 923
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobId;

    .line 924
    .local v1, "printJobId":Landroid/print/PrintJobId;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 925
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v2, v1, v0}, Lcom/android/server/print/UserState;->-wrap1(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;I)V

    .line 921
    .end local v0    # "appId":I
    .end local v1    # "printJobId":Landroid/print/PrintJobId;
    :cond_0
    return-void
.end method
