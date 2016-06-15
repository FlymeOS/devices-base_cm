.class final Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/ListView$DividerFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeDividerFilter"
.end annotation


# instance fields
.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 311
    return-void
.end method


# virtual methods
.method public bottomDeviderEnabled()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 320
    iget-object v4, p0, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->flymeGetFieldRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 321
    .local v1, "rootAdapter":Landroid/widget/ListAdapter;
    if-eqz v1, :cond_4

    .line 322
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 323
    .local v2, "size":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 336
    .end local v2    # "size":I
    :cond_0
    :goto_0
    return v3

    .line 327
    .restart local v2    # "size":I
    :cond_1
    instance-of v4, v1, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v4, :cond_4

    move-object v0, v1

    .line 328
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .line 329
    .local v0, "adapter":Landroid/preference/PreferenceGroupAdapter;
    add-int/lit8 v4, v2, -0x1

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-boolean v4, v4, Landroid/preference/PreferenceScreen;->mFlymeShowBottomDivider:Z

    if-eqz v4, :cond_0

    :cond_2
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, v2, -0x1

    if-gt v4, v5, :cond_3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/PreferenceCategory;

    if-nez v4, :cond_0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->isFilterDivider()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/PreferenceCategory;

    if-nez v4, :cond_0

    .line 336
    .end local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    .end local v2    # "size":I
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method
