.class Lcom/android/server/dreams/DreamManagerService$5;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$canDoze:Z

.field final synthetic val$isTest:Z

.field final synthetic val$name:Landroid/content/ComponentName;

.field final synthetic val$newToken:Landroid/os/Binder;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p2, "val$newToken"    # Landroid/os/Binder;
    .param p3, "val$name"    # Landroid/content/ComponentName;
    .param p4, "val$isTest"    # Z
    .param p5, "val$canDoze"    # Z
    .param p6, "val$userId"    # I

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$newToken:Landroid/os/Binder;

    iput-object p3, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$name:Landroid/content/ComponentName;

    iput-boolean p4, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$isTest:Z

    iput-boolean p5, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$canDoze:Z

    iput p6, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-get1(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$newToken:Landroid/os/Binder;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$name:Landroid/content/ComponentName;

    iget-boolean v3, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$isTest:Z

    iget-boolean v4, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$canDoze:Z

    iget v5, p0, Lcom/android/server/dreams/DreamManagerService$5;->val$userId:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/dreams/DreamController;->startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZI)V

    .line 412
    return-void
.end method
