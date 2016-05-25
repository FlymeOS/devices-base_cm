.class public Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .locals 1

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    .line 1117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1211
    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1221
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1224
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    .line 1149
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1152
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1183
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1186
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1172
    iput p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    .line 1173
    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Landroid/app/ActionBar$TabListener;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    .line 1138
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    .line 1128
    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1197
    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1200
    :cond_0
    return-object p0
.end method
