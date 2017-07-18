.class Lcom/android/server/CommonTimeManagementService$3;
.super Ljava/lang/Object;
.source "CommonTimeManagementService.java"

# interfaces
.implements Landroid/os/CommonTimeConfig$OnServerDiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CommonTimeManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CommonTimeManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/CommonTimeManagementService;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$3;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerDied()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$3;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->-wrap3(Lcom/android/server/CommonTimeManagementService;)V

    .line 130
    return-void
.end method
