.class Landroid/telecom/ConnectionService$5$2;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$5;->onError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/ConnectionService$5;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService$5;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/ConnectionService$5;

    .prologue
    .line 984
    iput-object p1, p0, Landroid/telecom/ConnectionService$5$2;->this$1:Landroid/telecom/ConnectionService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Landroid/telecom/ConnectionService$5$2;->this$1:Landroid/telecom/ConnectionService$5;

    iget-object v0, v0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telecom/ConnectionService;->-set0(Landroid/telecom/ConnectionService;Z)Z

    .line 986
    return-void
.end method
