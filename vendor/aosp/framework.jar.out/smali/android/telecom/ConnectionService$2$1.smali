.class Landroid/telecom/ConnectionService$2$1;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/ConnectionService$2;

.field final synthetic val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$isIncoming:Z

.field final synthetic val$isUnknown:Z

.field final synthetic val$request:Landroid/telecom/ConnectionRequest;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/ConnectionService$2;
    .param p2, "val$connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "val$id"    # Ljava/lang/String;
    .param p4, "val$request"    # Landroid/telecom/ConnectionRequest;
    .param p5, "val$isIncoming"    # Z
    .param p6, "val$isUnknown"    # Z

    .prologue
    .line 295
    iput-object p1, p0, Landroid/telecom/ConnectionService$2$1;->this$1:Landroid/telecom/ConnectionService$2;

    iput-object p2, p0, Landroid/telecom/ConnectionService$2$1;->val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput-object p3, p0, Landroid/telecom/ConnectionService$2$1;->val$id:Ljava/lang/String;

    iput-object p4, p0, Landroid/telecom/ConnectionService$2$1;->val$request:Landroid/telecom/ConnectionRequest;

    iput-boolean p5, p0, Landroid/telecom/ConnectionService$2$1;->val$isIncoming:Z

    iput-boolean p6, p0, Landroid/telecom/ConnectionService$2$1;->val$isUnknown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 298
    iget-object v0, p0, Landroid/telecom/ConnectionService$2$1;->this$1:Landroid/telecom/ConnectionService$2;

    iget-object v0, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    .line 299
    iget-object v1, p0, Landroid/telecom/ConnectionService$2$1;->val$connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 300
    iget-object v2, p0, Landroid/telecom/ConnectionService$2$1;->val$id:Ljava/lang/String;

    .line 301
    iget-object v3, p0, Landroid/telecom/ConnectionService$2$1;->val$request:Landroid/telecom/ConnectionRequest;

    .line 302
    iget-boolean v4, p0, Landroid/telecom/ConnectionService$2$1;->val$isIncoming:Z

    .line 303
    iget-boolean v5, p0, Landroid/telecom/ConnectionService$2$1;->val$isUnknown:Z

    .line 298
    invoke-static/range {v0 .. v5}, Landroid/telecom/ConnectionService;->-wrap7(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    .line 297
    return-void
.end method
