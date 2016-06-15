.class final Landroid/preference/PreferenceScreen$FlymeInjector;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerPadding;,
        Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    return-void
.end method

.method static flymeBindListView(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;)V
    .locals 3
    .param p0, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {p1}, Landroid/widget/ListView;->applyMeizuPartitionStyle()V

    .line 392
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDividerInSide(Z)V

    .line 393
    new-instance v0, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;-><init>(Landroid/preference/PreferenceScreen;)V

    .line 394
    .local v0, "dividerFilter":Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerFilterListener(Landroid/widget/ListView$DividerFilter;)V

    .line 395
    new-instance v1, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerPadding;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerPadding;-><init>(Landroid/preference/PreferenceScreen;)V

    .line 397
    .local v1, "dividerPadding":Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerPadding;
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 399
    .end local v0    # "dividerFilter":Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;
    .end local v1    # "dividerPadding":Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerPadding;
    :cond_0
    return-void
.end method

.method static flymeSetPreferenceView(Landroid/preference/PreferenceScreen;Landroid/view/View;I)V
    .locals 2
    .param p0, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    move-object v0, v1

    check-cast v0, Landroid/preference/Preference;

    .line 404
    .local v0, "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setPreferenceView(Landroid/view/View;)V

    .line 405
    return-void
.end method

.method static initFlymeExtraFields(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p0, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceScreen;->mFlymeShowBottomDivider:Z

    .line 385
    return-void
.end method
