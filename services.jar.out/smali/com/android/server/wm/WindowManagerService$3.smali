.class final Lcom/android/server/wm/WindowManagerService$3;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$haveInputMethods:Z

.field final synthetic val$holder:[Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$im:Lcom/android/server/input/InputManagerService;

.field final synthetic val$onlyCore:Z

.field final synthetic val$showBootMsgs:Z


# direct methods
.method constructor <init>([Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
    .locals 0
    .param p1, "val$holder"    # [Lcom/android/server/wm/WindowManagerService;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$im"    # Lcom/android/server/input/InputManagerService;
    .param p4, "val$haveInputMethods"    # Z
    .param p5, "val$showBootMsgs"    # Z
    .param p6, "val$onlyCore"    # Z

    .prologue
    .line 890
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$3;->val$im:Lcom/android/server/input/InputManagerService;

    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$3;->val$haveInputMethods:Z

    iput-boolean p5, p0, Lcom/android/server/wm/WindowManagerService$3;->val$showBootMsgs:Z

    iput-boolean p6, p0, Lcom/android/server/wm/WindowManagerService$3;->val$onlyCore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 893
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$3;->val$holder:[Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$3;->val$im:Lcom/android/server/input/InputManagerService;

    .line 894
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService$3;->val$haveInputMethods:Z

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService$3;->val$showBootMsgs:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowManagerService$3;->val$onlyCore:Z

    .line 893
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/wm/WindowManagerService;)V

    const/4 v1, 0x0

    aput-object v0, v7, v1

    .line 892
    return-void
.end method
