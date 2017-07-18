.class Lcom/android/server/hdmi/HdmiControlService$5$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$5;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$5;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$5;

    .prologue
    .line 2224
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$5$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2227
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$5$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$5;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get3(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(II)V

    .line 2228
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$5$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$5;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get11(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2229
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$5$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$5;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$5;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-wrap10(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2226
    return-void
.end method
