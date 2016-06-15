.class final Landroid/app/FragmentManagerImpl$FlymeInjector;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static mAnimArray:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static flymeOverlayAnim(I)I
    .locals 6
    .param p0, "id"    # I

    .prologue
    .line 2181
    sget-object v2, Landroid/app/FragmentManagerImpl$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    if-nez v2, :cond_2

    .line 2182
    new-instance v2, Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v2, Landroid/app/FragmentManagerImpl$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    .line 2183
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2184
    .local v1, "res":Landroid/content/res/Resources;
    if-nez v1, :cond_1

    .line 2196
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local p0    # "id":I
    :cond_0
    :goto_0
    return p0

    .line 2187
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local p0    # "id":I
    :cond_1
    sget-object v2, Landroid/app/FragmentManagerImpl$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "fragment_open_enter"

    const-string v4, "animator"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$animator;->mz_fragment_open_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2188
    sget-object v2, Landroid/app/FragmentManagerImpl$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "fragment_open_exit"

    const-string v4, "animator"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$animator;->mz_fragment_open_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2189
    sget-object v2, Landroid/app/FragmentManagerImpl$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "fragment_close_enter"

    const-string v4, "animator"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$animator;->mz_fragment_close_enter:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2190
    sget-object v2, Landroid/app/FragmentManagerImpl$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    const-string v3, "fragment_close_exit"

    const-string v4, "animator"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/internal/R$animator;->mz_fragment_close_exit:I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2192
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    sget-object v2, Landroid/app/FragmentManagerImpl$FlymeInjector;->mAnimArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2193
    .local v0, "overlayId":I
    if-lez v0, :cond_0

    move p0, v0

    .line 2194
    goto :goto_0
.end method

.method static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 2177
    invoke-static {p1}, Landroid/app/FragmentManagerImpl$FlymeInjector;->flymeOverlayAnim(I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
