.class public abstract Landroid/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ActionMode$OnActionItemDragListener;,
        Landroid/view/ActionMode$BackPressedListener;,
        Landroid/view/ActionMode$Callback;
    }
.end annotation


# instance fields
.field private mMzActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

.field private mMzBackListener:Landroid/view/ActionMode$BackPressedListener;

.field private mTag:Ljava/lang/Object;

.field private mTitleOptionalHint:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    return v0
.end method

.method public abstract invalidate()V
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 46
    iput-object p1, p0, Landroid/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setTitleOptionalHint(Z)V
    .locals 0
    .param p1, "titleOptional"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Landroid/view/ActionMode;->mTitleOptionalHint:Z

    .line 124
    return-void
.end method

.method public getActionItemDragListener()Landroid/view/ActionMode$OnActionItemDragListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ActionMode;->mMzActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    return-object v0
.end method

.method public getBackPressListener()Landroid/view/ActionMode$BackPressedListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/ActionMode;->mMzBackListener:Landroid/view/ActionMode$BackPressedListener;

    return-object v0
.end method

.method public setActionItemDragListener(Landroid/view/ActionMode$OnActionItemDragListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ActionMode$OnActionItemDragListener;

    .prologue
    iput-object p1, p0, Landroid/view/ActionMode;->mMzActionItemDragListener:Landroid/view/ActionMode$OnActionItemDragListener;

    return-void
.end method

.method public setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ActionMode$BackPressedListener;

    .prologue
    iput-object p1, p0, Landroid/view/ActionMode;->mMzBackListener:Landroid/view/ActionMode$BackPressedListener;

    return-void
.end method

.method public setDragDismissAnimating(Z)V
    .locals 0
    .param p1, "isAnimating"    # Z

    .prologue
    return-void
.end method
