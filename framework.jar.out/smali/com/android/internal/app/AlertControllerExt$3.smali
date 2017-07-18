.class Lcom/android/internal/app/AlertControllerExt$3;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertControllerExt;->setupButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertControllerExt;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertControllerExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AlertControllerExt;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/internal/app/AlertControllerExt$3;->this$0:Lcom/android/internal/app/AlertControllerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/app/AlertControllerExt$3;->this$0:Lcom/android/internal/app/AlertControllerExt;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/AlertControllerExt;->-wrap0(Lcom/android/internal/app/AlertControllerExt;Landroid/view/View;IIII)V

    .line 838
    return-void
.end method
