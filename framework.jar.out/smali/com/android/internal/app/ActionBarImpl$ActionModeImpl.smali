.class public Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
.super Landroid/view/ActionMode;
.source "ActionBarImpl.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private isDragDismissAnimating:Z

.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->isDragDismissAnimating:Z

    .line 1138
    iput-object p2, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 1139
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1141
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1142
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1209
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1211
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1156
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-eq v0, p0, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    iget-boolean v0, v0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->isDragDismissAnimating:Z

    if-nez v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$700(Lcom/android/internal/app/ActionBarImpl;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z
    invoke-static {v1}, Lcom/android/internal/app/ActionBarImpl;->access$800(Lcom/android/internal/app/ActionBarImpl;)Z

    move-result v1

    # invokes: Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ActionBarImpl;->access$900(ZZZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1174
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iput-object p0, v0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 1175
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iput-object v1, v0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 1179
    :goto_1
    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 1180
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 1183
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContextView;->closeMode()V

    .line 1184
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mDecorToolbar:Lcom/android/internal/widget/MzDecorToolbar;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1100(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzDecorToolbar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/MzDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1186
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/MzActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$500(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iget-boolean v1, v1, Lcom/android/internal/app/ActionBarImpl;->mHideOnContentScroll:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1188
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iput-object v3, v0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    .line 1191
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/MzActionBarView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzActionBarView;->setInActionMode(Z)V

    .line 1192
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/MzActionBarContextView;->setInActionMode(Z)V

    goto :goto_0

    .line 1177
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1146
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1204
    return-void

    .line 1202
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1276
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1292
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1298
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 1299
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 1279
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v1, :cond_1

    .line 1280
    const/4 v0, 0x0

    .line 1288
    :cond_0
    :goto_0
    return v0

    .line 1283
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v2}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1219
    return-void
.end method

.method public setDragDismissAnimating(Z)V
    .locals 0
    .param p1, "isAnimating"    # Z

    .prologue
    .line 1303
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->isDragDismissAnimating:Z

    .line 1304
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1239
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1224
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1234
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1229
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 1253
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1254
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/MzActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/MzActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MzActionBarContextView;->setTitleOptional(Z)V

    .line 1255
    return-void
.end method
