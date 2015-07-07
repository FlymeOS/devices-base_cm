.class public final Landroid/content/res/ThemeChangeRequest;
.super Ljava/lang/Object;
.source "ThemeChangeRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ThemeChangeRequest$Builder;,
        Landroid/content/res/ThemeChangeRequest$RequestType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ThemeChangeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPerAppOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

.field private final mThemeComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Landroid/content/res/ThemeChangeRequest$1;

    invoke-direct {v0}, Landroid/content/res/ThemeChangeRequest$1;-><init>()V

    sput-object v0, Landroid/content/res/ThemeChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .local v1, "numComponents":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 117
    iget-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 122
    iget-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :cond_1
    invoke-static {}, Landroid/content/res/ThemeChangeRequest$RequestType;->values()[Landroid/content/res/ThemeChangeRequest$RequestType;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Landroid/content/res/ThemeChangeRequest;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/ThemeChangeRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/res/ThemeChangeRequest$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/content/res/ThemeChangeRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/res/ThemeChangeRequest$RequestType;)V
    .locals 1
    .param p3, "requestType"    # Landroid/content/res/ThemeChangeRequest$RequestType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/ThemeChangeRequest$RequestType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "perAppThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 108
    :cond_0
    if-eqz p2, :cond_1

    .line 109
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    :cond_1
    iput-object p3, p0, Landroid/content/res/ThemeChangeRequest;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/res/ThemeChangeRequest$RequestType;Landroid/content/res/ThemeChangeRequest$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Landroid/content/res/ThemeChangeRequest$RequestType;
    .param p4, "x3"    # Landroid/content/res/ThemeChangeRequest$1;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/ThemeChangeRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/res/ThemeChangeRequest$RequestType;)V

    return-void
.end method

.method private getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "mods_alarms"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBootanimationThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "mods_bootanim"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "mods_fonts"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconsThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "mods_icons"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "mods_lockscreen"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "mods_navigation_bar"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "mods_notifications"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumChangesRequested()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOverlayThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "mods_overlays"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPerAppOverlays()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReqeustType()Landroid/content/res/ThemeChangeRequest$RequestType;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    return-object v0
.end method

.method public getRingtoneThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "mods_ringtones"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "mods_status_bar"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getThemeComponentsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "mods_homescreen"

    invoke-direct {p0, v0}, Landroid/content/res/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    iget-object v3, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v3, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "component":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Landroid/content/res/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v1    # "component":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v3, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Landroid/content/res/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/content/res/ThemeChangeRequest;->mRequestType:Landroid/content/res/ThemeChangeRequest$RequestType;

    invoke-virtual {v3}, Landroid/content/res/ThemeChangeRequest$RequestType;->ordinal()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return-void
.end method
