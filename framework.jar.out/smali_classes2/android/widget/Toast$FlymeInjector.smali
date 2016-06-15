.class final Landroid/widget/Toast$FlymeInjector;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static mPkgName:Ljava/lang/String;

.field private static mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 503
    const-string v0, ""

    sput-object v0, Landroid/widget/Toast$FlymeInjector;->mText:Ljava/lang/CharSequence;

    .line 504
    const-string v0, ""

    sput-object v0, Landroid/widget/Toast$FlymeInjector;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkSameMsg(Landroid/widget/Toast;)Z
    .locals 7
    .param p0, "toast"    # Landroid/widget/Toast;

    .prologue
    const/4 v4, 0x0

    .line 509
    iget-object v5, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 512
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 513
    .local v1, "msg":Ljava/lang/CharSequence;
    sget-object v5, Landroid/widget/Toast$FlymeInjector;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/widget/Toast$FlymeInjector;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 518
    .end local v1    # "msg":Ljava/lang/CharSequence;
    .end local v3    # "tv":Landroid/widget/TextView;
    :goto_0
    return v4

    .line 514
    .restart local v1    # "msg":Ljava/lang/CharSequence;
    .restart local v3    # "tv":Landroid/widget/TextView;
    :cond_0
    sput-object v2, Landroid/widget/Toast$FlymeInjector;->mPkgName:Ljava/lang/String;

    .line 515
    sput-object v1, Landroid/widget/Toast$FlymeInjector;->mText:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    .end local v1    # "msg":Ljava/lang/CharSequence;
    .end local v3    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static resetFlymeExtraFields()V
    .locals 1

    .prologue
    .line 525
    const-string v0, ""

    sput-object v0, Landroid/widget/Toast$FlymeInjector;->mPkgName:Ljava/lang/String;

    .line 526
    const-string v0, ""

    sput-object v0, Landroid/widget/Toast$FlymeInjector;->mText:Ljava/lang/CharSequence;

    .line 528
    return-void
.end method
