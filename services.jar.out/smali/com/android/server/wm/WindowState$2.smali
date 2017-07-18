.class Lcom/android/server/wm/WindowState$2;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowState;->reportResized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;

.field final synthetic val$contentInsets:Landroid/graphics/Rect;

.field final synthetic val$frame:Landroid/graphics/Rect;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;

.field final synthetic val$outsets:Landroid/graphics/Rect;

.field final synthetic val$overscanInsets:Landroid/graphics/Rect;

.field final synthetic val$reportDraw:Z

.field final synthetic val$stableInsets:Landroid/graphics/Rect;

.field final synthetic val$visibleInsets:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;
    .param p2, "val$frame"    # Landroid/graphics/Rect;
    .param p3, "val$overscanInsets"    # Landroid/graphics/Rect;
    .param p4, "val$contentInsets"    # Landroid/graphics/Rect;
    .param p5, "val$visibleInsets"    # Landroid/graphics/Rect;
    .param p6, "val$stableInsets"    # Landroid/graphics/Rect;
    .param p7, "val$outsets"    # Landroid/graphics/Rect;
    .param p8, "val$reportDraw"    # Z
    .param p9, "val$newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/android/server/wm/WindowState$2;->this$0:Lcom/android/server/wm/WindowState;

    iput-object p2, p0, Lcom/android/server/wm/WindowState$2;->val$frame:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/wm/WindowState$2;->val$overscanInsets:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/server/wm/WindowState$2;->val$contentInsets:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/server/wm/WindowState$2;->val$visibleInsets:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/wm/WindowState$2;->val$stableInsets:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/server/wm/WindowState$2;->val$outsets:Landroid/graphics/Rect;

    iput-boolean p8, p0, Lcom/android/server/wm/WindowState$2;->val$reportDraw:Z

    iput-object p9, p0, Lcom/android/server/wm/WindowState$2;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1524
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState$2;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/WindowState$2;->val$frame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowState$2;->val$overscanInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState$2;->val$contentInsets:Landroid/graphics/Rect;

    .line 1525
    iget-object v4, p0, Lcom/android/server/wm/WindowState$2;->val$visibleInsets:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowState$2;->val$stableInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/WindowState$2;->val$outsets:Landroid/graphics/Rect;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState$2;->val$reportDraw:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowState$2;->val$newConfig:Landroid/content/res/Configuration;

    .line 1524
    invoke-interface/range {v0 .. v8}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    :goto_0
    return-void

    .line 1526
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
