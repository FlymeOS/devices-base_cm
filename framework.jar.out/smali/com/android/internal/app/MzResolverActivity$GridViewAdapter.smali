.class final Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GridViewAdapter"
.end annotation


# instance fields
.field private mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFilterLastUsed:Z

.field private mIconDpi:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialIntents:[Landroid/content/Intent;

.field private mIntent:Landroid/content/Intent;

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private mLastChosenPosition:I

.field private mLaunchedFromUid:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "launchedFromUid"    # I
    .param p5, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1573
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1570
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mLastChosenPosition:I

    .line 1575
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mContext:Landroid/content/Context;

    .line 1576
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 1577
    iput-object p3, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mList:Ljava/util/List;

    .line 1578
    iget-object v1, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1579
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mIconDpi:I

    .line 1580
    iput-object p2, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mIntent:Landroid/content/Intent;

    .line 1581
    iput p4, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mLaunchedFromUid:I

    .line 1582
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1574
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 1657
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1661
    :goto_0
    return-object v1

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .local v1, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1624
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1620
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 1681
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 1592
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    move-result-object v0

    .line 1594
    .local v0, "info":Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;
    if-nez p2, :cond_2

    .line 1595
    iget-object v2, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/flyme/internal/R$layout;->mz_resolve_grid_item:I

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1596
    new-instance v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;

    invoke-direct {v1, p2}, Lcom/android/internal/app/MzResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1597
    .local v1, "viewHolder":Lcom/android/internal/app/MzResolverActivity$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1605
    :goto_0
    iget-object v2, v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 1607
    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v2}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1609
    :cond_0
    iget-boolean v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->isTransform:Z

    if-nez v2, :cond_1

    .line 1610
    iget-object v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/meizu/util/StrokeDrawableUtils;->createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1611
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->isTransform:Z

    .line 1613
    :cond_1
    iget-object v2, v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1615
    return-object p2

    .line 1599
    .end local v1    # "viewHolder":Lcom/android/internal/app/MzResolverActivity$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MzResolverActivity$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/android/internal/app/MzResolverActivity$ViewHolder;
    goto :goto_0
.end method

.method public intentForPosition(IZ)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1669
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    move-result-object v1

    .line 1671
    .local v1, "dri":Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1673
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1674
    iget-object v3, v1, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1675
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    .line 1676
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1675
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1677
    return-object v2

    .line 1669
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "dri":Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    .restart local v1    # "dri":Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;
    goto :goto_0

    .line 1672
    :cond_1
    iget-object v3, v1, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->getReplacementIntent(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1630
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1631
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1632
    return-object v0

    .line 1635
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    .line 1636
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1637
    if-eqz v0, :cond_1

    .line 1638
    return-object v0

    .line 1641
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 1642
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 1643
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1644
    if-eqz v0, :cond_2

    .line 1645
    return-object v0

    .line 1648
    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    .line 1651
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method public resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 1665
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->getItem(I)Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    move-result-object v0

    :goto_0
    iget-object v0, v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$GridViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MzResolverActivity$DisplayTargetInfo;

    goto :goto_0
.end method
