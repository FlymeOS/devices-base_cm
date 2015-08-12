.class Landroid/preference/PreferenceScreen$FlymeListViewDividerFilter;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/ListView$DividerFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlymeListViewDividerFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceScreen;


# direct methods
.method private constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Landroid/preference/PreferenceScreen$FlymeListViewDividerFilter;->this$0:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/PreferenceScreen;
    .param p2, "x1"    # Landroid/preference/PreferenceScreen$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/preference/PreferenceScreen$FlymeListViewDividerFilter;-><init>(Landroid/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method public bottomDeviderEnabled()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v4, p0, Landroid/preference/PreferenceScreen$FlymeListViewDividerFilter;->this$0:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 323
    .local v1, "rootAdapter":Landroid/widget/ListAdapter;
    if-eqz v1, :cond_3

    .line 324
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 325
    .local v2, "size":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 339
    .end local v2    # "size":I
    :cond_0
    :goto_0
    return v3

    .line 329
    .restart local v2    # "size":I
    :cond_1
    instance-of v4, v1, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 330
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .line 331
    .local v0, "adapter":Landroid/preference/PreferenceGroupAdapter;
    add-int/lit8 v4, v2, -0x1

    if-eq p1, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, v2, -0x1

    if-gt v4, v5, :cond_2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/PreferenceCategory;

    if-nez v4, :cond_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->isFilterDivider()Z

    move-result v4

    if-nez v4, :cond_0

    .line 339
    .end local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    .end local v2    # "size":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method
