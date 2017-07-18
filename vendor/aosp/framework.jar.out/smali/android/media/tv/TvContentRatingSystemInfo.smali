.class public final Landroid/media/tv/TvContentRatingSystemInfo;
.super Ljava/lang/Object;
.source "TvContentRatingSystemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvContentRatingSystemInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mXmlUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Landroid/media/tv/TvContentRatingSystemInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvContentRatingSystemInfo$1;-><init>()V

    .line 83
    sput-object v0, Landroid/media/tv/TvContentRatingSystemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "xmlUri"    # Landroid/net/Uri;
    .param p2, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    .line 58
    iput-object p2, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvContentRatingSystemInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static final createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;
    .locals 3
    .param p0, "xmlResourceId"    # I
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 48
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 49
    const-string/jumbo v2, "android.resource"

    .line 48
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 50
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 51
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 53
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/media/tv/TvContentRatingSystemInfo;

    invoke-direct {v1, v0, p1}, Landroid/media/tv/TvContentRatingSystemInfo;-><init>(Landroid/net/Uri;Landroid/content/pm/ApplicationInfo;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public final getXmlUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final isSystemDefined()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mXmlUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Landroid/media/tv/TvContentRatingSystemInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    return-void
.end method
