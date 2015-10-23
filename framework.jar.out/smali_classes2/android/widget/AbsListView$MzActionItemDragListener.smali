.class final Landroid/widget/AbsListView$MzActionItemDragListener;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/ActionMode$OnActionItemDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MzActionItemDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 7635
    iput-object p1, p0, Landroid/widget/AbsListView$MzActionItemDragListener;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 7635
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$MzActionItemDragListener;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 7638
    iget-object v0, p0, Landroid/widget/AbsListView$MzActionItemDragListener;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView;->mzDoActionItemDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V

    .line 7639
    return-void
.end method
