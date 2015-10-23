.class Lcom/android/internal/widget/MzActionBarContainer$2;
.super Ljava/lang/Object;
.source "MzActionBarContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer$2;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$2;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/MzActionBarContainer;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 107
    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->sDirtyField:Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/android/internal/widget/MzActionBarContainer;->access$400()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 110
    .local v0, "diryRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$2;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$500(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$2;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$500(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer$2;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarContainer;->access$500(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "diryRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v2

    goto :goto_0
.end method
