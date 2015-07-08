.class public Landroid/media/MzMediaScanner;
.super Ljava/lang/Object;
.source "MzMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MzMediaScanner$1;,
        Landroid/media/MzMediaScanner$WplHandler;,
        Landroid/media/MzMediaScanner$MediaBulkDeleter;,
        Landroid/media/MzMediaScanner$MyMediaScannerClient;,
        Landroid/media/MzMediaScanner$PlaylistEntry;,
        Landroid/media/MzMediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final EXTERNAL_DIR:Ljava/lang/String;

.field private static final EXTERNAL_RINGTONE_DIR:Ljava/lang/String;

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final MUSIC_DIR:Ljava/lang/String;

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MzMediaScanner"

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mCusEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MzMediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultCanlendarFilename:Ljava/lang/String;

.field private mDefaultCanlendarSet:Z

.field private mDefaultMailFilename:Ljava/lang/String;

.field private mDefaultMailSet:Z

.field private mDefaultMmsFilename:Ljava/lang/String;

.field private mDefaultMmsSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalIsEmulated:Z

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFileEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MzMediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mFilesUriNoNotify:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mInternalDB:Z

.field private mM3uCopingFlg:Z

.field private mM3uMembersUri:Landroid/net/Uri;

.field private mM3uPath:Ljava/lang/String;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private mPackageName:Ljava/lang/String;

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MzMediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MzMediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/16 v4, 0x2f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Landroid/media/MzMediaScanner;->native_init()V

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/MzMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 132
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MzMediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 141
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "playlist_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MzMediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 149
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzMediaScanner;->EXTERNAL_DIR:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzMediaScanner;->EXTERNAL_RINGTONE_DIR:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzMediaScanner;->MUSIC_DIR:Ljava/lang/String;

    .line 157
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v2

    const-string v1, "Classic Rock"

    aput-object v1, v0, v3

    const-string v1, "Country"

    aput-object v1, v0, v5

    const-string v1, "Dance"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const-string v1, "Instrumental Rock"

    aput-object v1, v0, v4

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MzMediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 1993
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MzMediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 1994
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MzMediaScanner;->mMediaPaths:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-boolean v1, p0, Landroid/media/MzMediaScanner;->mWasEmptyPriorToScan:Z

    .line 368
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 371
    iput-boolean v1, p0, Landroid/media/MzMediaScanner;->mM3uCopingFlg:Z

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mCusEntries:Ljava/util/Map;

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mFileEntries:Ljava/util/Map;

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;

    .line 409
    iput-object v3, p0, Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 434
    new-instance v0, Landroid/media/MzMediaScanner$MyMediaScannerClient;

    invoke-direct {v0, p0, v3}, Landroid/media/MzMediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MzMediaScanner;Landroid/media/MzMediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;

    .line 412
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->native_setup()V

    .line 413
    iput-object p1, p0, Landroid/media/MzMediaScanner;->mContext:Landroid/content/Context;

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 416
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 418
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->setDefaultRingtoneFileNames()V

    .line 420
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 421
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MzMediaScanner;->mExternalIsEmulated:Z

    .line 423
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Landroid/media/MzMediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/media/MzMediaScanner;->MUSIC_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/media/MzMediaScanner;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mCusEntries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/media/MzMediaScanner;)Landroid/media/MzMediaScanner$MyMediaScannerClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MzMediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MzMediaScanner;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget v0, p0, Landroid/media/MzMediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/media/MzMediaScanner;->EXTERNAL_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/media/MzMediaScanner;->EXTERNAL_RINGTONE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mExternalIsEmulated:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/media/MzMediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/media/MzMediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/MzMediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mInternalDB:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/media/MzMediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MzMediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MzMediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$2800(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/media/MzMediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/media/MzMediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/media/MzMediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mDefaultMmsSet:Z

    return v0
.end method

.method static synthetic access$3002(Landroid/media/MzMediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/media/MzMediaScanner;->mDefaultMmsSet:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/media/MzMediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mDefaultMmsFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mDefaultMailSet:Z

    return v0
.end method

.method static synthetic access$3202(Landroid/media/MzMediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/media/MzMediaScanner;->mDefaultMailSet:Z

    return p1
.end method

.method static synthetic access$3300(Landroid/media/MzMediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mDefaultMailFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mDefaultCanlendarSet:Z

    return v0
.end method

.method static synthetic access$3402(Landroid/media/MzMediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/media/MzMediaScanner;->mDefaultCanlendarSet:Z

    return p1
.end method

.method static synthetic access$3500(Landroid/media/MzMediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mDefaultCanlendarFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$3602(Landroid/media/MzMediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/media/MzMediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$3700(Landroid/media/MzMediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$3802(Landroid/media/MzMediaScanner;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/media/MzMediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$3900(Landroid/media/MzMediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MzMediaScanner;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/media/MzMediaScanner;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mM3uCopingFlg:Z

    return v0
.end method

.method static synthetic access$4100(Landroid/media/MzMediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mM3uMembersUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/media/MzMediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mM3uPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/media/MzMediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/media/MzMediaScanner;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/media/MzMediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Landroid/media/MzMediaScanner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/media/MzMediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/media/MzMediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Landroid/drm/DrmManagerClient;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$4800(Landroid/media/MzMediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/media/MzMediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MzMediaScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MzMediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MzMediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MzMediaScanner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/media/MzMediaScanner;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MzMediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MzMediaScanner;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/media/MediaScannerClient;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MzMediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2253
    new-instance v1, Landroid/media/MzMediaScanner$PlaylistEntry;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Landroid/media/MzMediaScanner$PlaylistEntry;-><init>(Landroid/media/MzMediaScanner$1;)V

    .line 2255
    .local v1, "entry":Landroid/media/MzMediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2256
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2259
    :cond_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 2274
    :goto_1
    return-void

    .line 2260
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2264
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2265
    .local v0, "ch1":C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    :cond_3
    move v3, v4

    .line 2268
    .local v3, "fullPath":Z
    :cond_4
    if-nez v3, :cond_5

    .line 2269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2270
    :cond_5
    iput-object p1, v1, Landroid/media/MzMediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2273
    iget-object v4, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 2
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    .prologue
    .line 1998
    const-class v1, Landroid/media/MediaScanner;

    monitor-enter v1

    .line 1999
    if-eqz p0, :cond_0

    .line 2000
    :try_start_0
    sget-object v0, Landroid/media/MzMediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2002
    :cond_0
    if-eqz p1, :cond_1

    .line 2003
    sget-object v0, Landroid/media/MzMediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2005
    :cond_1
    monitor-exit v1

    .line 2006
    return-void

    .line 2005
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directories"    # [Ljava/lang/String;

    .prologue
    .line 1744
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1745
    aget-object v0, p2, v1

    .line 1746
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1747
    const/4 v2, 0x1

    .line 1750
    .end local v0    # "directory":Ljava/lang/String;
    :goto_1
    return v2

    .line 1744
    .restart local v0    # "directory":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1750
    .end local v0    # "directory":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1865
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1867
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1868
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1869
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1870
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1871
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1872
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "nonotify"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 1874
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    iput-boolean v3, p0, Landroid/media/MzMediaScanner;->mInternalDB:Z

    .line 1886
    :goto_0
    return-void

    .line 1878
    :cond_0
    iput-boolean v3, p0, Landroid/media/MzMediaScanner;->mProcessPlaylists:Z

    .line 1879
    iput-boolean v3, p0, Landroid/media/MzMediaScanner;->mProcessGenres:Z

    .line 1880
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1882
    iput-boolean v3, p0, Landroid/media/MzMediaScanner;->mCaseInsensitivePaths:Z

    .line 1884
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MzMediaScanner;->mInternalDB:Z

    goto :goto_0
.end method

.method private isDrmEnabled()Z
    .locals 2

    .prologue
    .line 437
    const-string v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1960
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1961
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 1990
    :cond_0
    :goto_0
    return v1

    .line 1966
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1967
    .local v7, "lastSlash":I
    if-ltz v7, :cond_3

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1969
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1976
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1977
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1981
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1982
    .local v8, "length":I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-ne v8, v9, :cond_3

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .end local v8    # "length":I
    :cond_3
    move v1, v4

    .line 1990
    goto :goto_0
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2009
    if-nez p0, :cond_1

    .line 2054
    :cond_0
    :goto_0
    return v5

    .line 2013
    :cond_1
    const-string v7, "@meizu_protbox@"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2014
    const-string v6, "MzMediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] is in protbox"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2020
    :cond_2
    const-string v7, "/."

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_3

    move v5, v6

    .line 2021
    goto :goto_0

    .line 2024
    :cond_3
    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2025
    .local v1, "firstSlash":I
    if-lez v1, :cond_0

    .line 2028
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2030
    .local v3, "parent":Ljava/lang/String;
    const-class v7, Landroid/media/MediaScanner;

    monitor-enter v7

    .line 2031
    :try_start_0
    sget-object v5, Landroid/media/MzMediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2032
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 2033
    :cond_4
    sget-object v5, Landroid/media/MzMediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2036
    const/4 v2, 0x1

    .line 2037
    .local v2, "offset":I
    :goto_1
    if-ltz v2, :cond_6

    .line 2038
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2039
    .local v4, "slashIndex":I
    if-le v4, v2, :cond_5

    .line 2040
    add-int/lit8 v4, v4, 0x1

    .line 2041
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".nomedia"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2042
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2044
    sget-object v5, Landroid/media/MzMediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string v8, ""

    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    monitor-exit v7

    move v5, v6

    goto/16 :goto_0

    .line 2048
    .end local v0    # "file":Ljava/io/File;
    :cond_5
    move v2, v4

    .line 2049
    goto :goto_1

    .line 2050
    .end local v4    # "slashIndex":I
    :cond_6
    sget-object v5, Landroid/media/MzMediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string v6, ""

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    .end local v2    # "offset":I
    :cond_7
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2054
    invoke-static {p0}, Landroid/media/MzMediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0

    .line 2052
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 2229
    iget-object v5, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2230
    .local v3, "len":I
    const/4 v0, 0x1

    .line 2231
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2232
    iget-object v5, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MzMediaScanner$PlaylistEntry;

    .line 2233
    .local v1, "entry":Landroid/media/MzMediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 2231
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2236
    :cond_1
    const/4 v0, 0x0

    .line 2237
    iget-object v5, v1, Landroid/media/MzMediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2238
    iput-wide p1, v1, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2239
    iput v6, v1, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2243
    :cond_2
    iget-object v5, v1, Landroid/media/MzMediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/MzMediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2244
    .local v4, "matchLength":I
    iget v5, v1, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 2245
    iput-wide p1, v1, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2246
    iput v4, v1, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2249
    .end local v1    # "entry":Landroid/media/MzMediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 2202
    const/4 v10, 0x0

    .line 2203
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2204
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 2206
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 2207
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2208
    .local v11, "slash1":I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2209
    .local v12, "slash2":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 2210
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2211
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 2212
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 2213
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 2214
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 2215
    :goto_4
    sub-int v5, v8, v2

    .line 2216
    .local v5, "length":I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 2224
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_0
    return v10

    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_1
    move v2, v6

    .line 2211
    goto :goto_1

    .restart local v2    # "start1":I
    :cond_2
    move v4, v7

    .line 2212
    goto :goto_2

    .line 2213
    .restart local v4    # "start2":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2214
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2217
    .restart local v5    # "length":I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2218
    add-int/lit8 v10, v10, 0x1

    .line 2219
    add-int/lit8 v8, v2, -0x1

    .line 2220
    add-int/lit8 v9, v4, -0x1

    .line 2222
    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 3
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1842
    iget-boolean v0, p0, Landroid/media/MzMediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1843
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->processPlayLists()V

    .line 1846
    :cond_0
    iget v0, p0, Landroid/media/MzMediaScanner;->mOriginalCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MzMediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1847
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->pruneDeadThumbnailFiles()V

    .line 1850
    :cond_1
    iput-object v2, p0, Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;

    .line 1851
    iput-object v2, p0, Landroid/media/MzMediaScanner;->mFileEntries:Ljava/util/Map;

    .line 1852
    iput-object v2, p0, Landroid/media/MzMediaScanner;->mCusEntries:Ljava/util/Map;

    .line 1854
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 40
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1583
    const/16 v26, 0x0

    .line 1584
    .local v26, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1585
    .local v7, "where":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1587
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;

    if-nez v3, :cond_5

    .line 1588
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;

    .line 1593
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mFileEntries:Ljava/util/Map;

    if-nez v3, :cond_6

    .line 1594
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MzMediaScanner;->mFileEntries:Ljava/util/Map;

    .line 1599
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mCusEntries:Ljava/util/Map;

    if-nez v3, :cond_7

    .line 1600
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MzMediaScanner;->mCusEntries:Ljava/util/Map;

    .line 1605
    :goto_2
    if-eqz p1, :cond_a

    .line 1606
    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1607
    .local v32, "file":Ljava/io/File;
    const/16 v24, 0x0

    .line 1608
    .local v24, "arg":Ljava/lang/String;
    const/16 v39, 0x0

    .line 1609
    .local v39, "type":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1610
    move-object/from16 v24, p1

    .line 1611
    const-string v39, "=?"

    .line 1620
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>? AND _data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1622
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v8, v3

    const/4 v3, 0x1

    aput-object v24, v8, v3

    .line 1632
    .end local v24    # "arg":Ljava/lang/String;
    .end local v32    # "file":Ljava/io/File;
    .end local v39    # "type":Ljava/lang/String;
    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v25

    .line 1633
    .local v25, "builder":Landroid/net/Uri$Builder;
    const-string v3, "deletedata"

    const-string v4, "false"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1634
    new-instance v28, Landroid/media/MzMediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4, v6}, Landroid/media/MzMediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1639
    .local v28, "deleter":Landroid/media/MzMediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_2

    .line 1644
    const-wide/high16 v35, -0x8000000000000000L

    .line 1645
    .local v35, "lastId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "limit"

    const-string v6, "1000"

    invoke-virtual {v3, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1646
    .local v5, "limitUri":Landroid/net/Uri;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MzMediaScanner;->mWasEmptyPriorToScan:Z

    .line 1649
    :cond_0
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v35

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .line 1650
    if-eqz v26, :cond_1

    .line 1651
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1652
    const/16 v26, 0x0

    .line 1654
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    sget-object v6, Landroid/media/MzMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v9, "_id"

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v26

    .line 1656
    if-nez v26, :cond_b

    .line 1728
    .end local v5    # "limitUri":Landroid/net/Uri;
    .end local v35    # "lastId":J
    :cond_2
    if-eqz v26, :cond_3

    .line 1729
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1731
    :cond_3
    invoke-virtual/range {v28 .. v28}, Landroid/media/MzMediaScanner$MediaBulkDeleter;->flush()V

    .line 1735
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MzMediaScanner;->mOriginalCount:I

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    sget-object v19, Landroid/media/MzMediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-interface/range {v16 .. v23}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v26

    .line 1737
    if-eqz v26, :cond_4

    .line 1738
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MzMediaScanner;->mOriginalCount:I

    .line 1739
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1741
    :cond_4
    return-void

    .line 1590
    .end local v25    # "builder":Landroid/net/Uri$Builder;
    .end local v28    # "deleter":Landroid/media/MzMediaScanner$MediaBulkDeleter;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 1596
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mFileEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto/16 :goto_1

    .line 1602
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mCusEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto/16 :goto_2

    .line 1612
    .restart local v24    # "arg":Ljava/lang/String;
    .restart local v32    # "file":Ljava/io/File;
    .restart local v39    # "type":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1614
    const-string v39, " LIKE ?"

    goto/16 :goto_3

    .line 1617
    :cond_9
    move-object/from16 v24, p1

    .line 1618
    const-string v39, " LIKE ?"

    goto/16 :goto_3

    .line 1624
    .end local v24    # "arg":Ljava/lang/String;
    .end local v32    # "file":Ljava/io/File;
    .end local v39    # "type":Ljava/lang/String;
    :cond_a
    const-string v7, "_id>?"

    .line 1625
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v8, v3

    .restart local v8    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_4

    .line 1660
    .restart local v5    # "limitUri":Landroid/net/Uri;
    .restart local v25    # "builder":Landroid/net/Uri$Builder;
    .restart local v28    # "deleter":Landroid/media/MzMediaScanner$MediaBulkDeleter;
    .restart local v35    # "lastId":J
    :cond_b
    :try_start_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v37

    .line 1662
    .local v37, "num":I
    if-eqz v37, :cond_2

    .line 1665
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MzMediaScanner;->mWasEmptyPriorToScan:Z

    .line 1666
    :cond_c
    :goto_5
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1667
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1668
    .local v10, "rowId":J
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1669
    .local v12, "path":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1670
    .local v15, "format":I
    const/4 v3, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1671
    .local v13, "lastModified":J
    move-wide/from16 v35, v10

    .line 1676
    if-eqz v12, :cond_c

    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_c

    .line 1677
    const/16 v31, 0x0

    .line 1679
    .local v31, "exists":Z
    :try_start_2
    sget v3, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v12, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v31

    .line 1683
    :goto_6
    :try_start_3
    invoke-static {v12}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v34

    .line 1684
    .local v34, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v34, :cond_e

    const/16 v33, 0x0

    .line 1685
    .local v33, "fileType":I
    :goto_7
    if-nez v31, :cond_12

    invoke-static {v15}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1691
    const/16 v3, 0x35

    move/from16 v0, v33

    if-ne v3, v0, :cond_10

    .line 1692
    invoke-static {v12}, Landroid/media/CueHelper;->getCueFromCus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v27

    .line 1694
    .local v27, "cuePath":Ljava/lang/String;
    :try_start_4
    sget v3, Landroid/system/OsConstants;->F_OK:I

    move-object/from16 v0, v27

    invoke-static {v0, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v31

    .line 1698
    :goto_8
    if-eqz v31, :cond_f

    .line 1699
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mCusEntries:Ljava/util/Map;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Landroid/media/MzMediaScanner$FileEntry;

    invoke-direct/range {v9 .. v15}, Landroid/media/MzMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 1728
    .end local v5    # "limitUri":Landroid/net/Uri;
    .end local v10    # "rowId":J
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "lastModified":J
    .end local v15    # "format":I
    .end local v27    # "cuePath":Ljava/lang/String;
    .end local v31    # "exists":Z
    .end local v33    # "fileType":I
    .end local v34    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v37    # "num":I
    :catchall_0
    move-exception v3

    if-eqz v26, :cond_d

    .line 1729
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 1731
    :cond_d
    invoke-virtual/range {v28 .. v28}, Landroid/media/MzMediaScanner$MediaBulkDeleter;->flush()V

    throw v3

    .line 1680
    .restart local v5    # "limitUri":Landroid/net/Uri;
    .restart local v10    # "rowId":J
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v13    # "lastModified":J
    .restart local v15    # "format":I
    .restart local v31    # "exists":Z
    .restart local v37    # "num":I
    :catch_0
    move-exception v30

    .line 1681
    .local v30, "e1":Landroid/system/ErrnoException;
    :try_start_6
    const-string v3, "MzMediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prescan: ErrnoException! path="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", format = 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1684
    .end local v30    # "e1":Landroid/system/ErrnoException;
    .restart local v34    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_e
    move-object/from16 v0, v34

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v33, v0

    goto :goto_7

    .line 1695
    .restart local v27    # "cuePath":Ljava/lang/String;
    .restart local v33    # "fileType":I
    :catch_1
    move-exception v29

    .line 1696
    .local v29, "e":Landroid/system/ErrnoException;
    invoke-virtual/range {v29 .. v29}, Landroid/system/ErrnoException;->printStackTrace()V

    goto :goto_8

    .line 1702
    .end local v29    # "e":Landroid/system/ErrnoException;
    :cond_f
    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Landroid/media/MzMediaScanner$MediaBulkDeleter;->delete(J)V

    goto/16 :goto_5

    .line 1704
    .end local v27    # "cuePath":Ljava/lang/String;
    :cond_10
    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1705
    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Landroid/media/MzMediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1706
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/.nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1707
    invoke-virtual/range {v28 .. v28}, Landroid/media/MzMediaScanner$MediaBulkDeleter;->flush()V

    .line 1708
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v38

    .line 1709
    .local v38, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    const-string v6, "unhide"

    const/4 v9, 0x0

    move-object/from16 v0, v38

    invoke-interface {v3, v4, v6, v0, v9}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_5

    .line 1713
    .end local v38    # "parent":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Landroid/media/MzMediaScanner$MediaBulkDeleter;->delete(J)V

    goto/16 :goto_5

    .line 1715
    :cond_12
    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1716
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Landroid/media/MzMediaScanner$FileEntry;

    invoke-direct/range {v9 .. v15}, Landroid/media/MzMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1719
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mFileEntries:Ljava/util/Map;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Landroid/media/MzMediaScanner$FileEntry;

    invoke-direct/range {v9 .. v15}, Landroid/media/MzMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 12
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .prologue
    .line 2277
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2278
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2279
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2280
    .local v6, "rowId":J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2281
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MzMediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2286
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2287
    .local v5, "len":I
    const/4 v4, 0x0

    .line 2288
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2289
    iget-object v8, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MzMediaScanner$PlaylistEntry;

    .line 2290
    .local v2, "entry":Landroid/media/MzMediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 2292
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2293
    const-string v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2294
    const-string v8, "audio_id"

    iget-wide v10, v2, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2295
    iget-object v8, p0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v9, p3, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2296
    add-int/lit8 v4, v4, 0x1

    .line 2288
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2297
    :catch_0
    move-exception v1

    .line 2298
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "MzMediaScanner"

    const-string v9, "RemoteException in MzMediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2304
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Landroid/media/MzMediaScanner$PlaylistEntry;
    :goto_1
    return-void

    .line 2303
    :cond_3
    iget-object v8, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 14
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;
    .param p4, "playListDirectory"    # Ljava/lang/String;

    .prologue
    .line 2307
    const/4 v9, -0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2308
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2309
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2310
    .local v10, "rowId":J
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2313
    .local v2, "data":Ljava/lang/String;
    const/4 v9, 0x0

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v2, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2316
    .local v3, "dataDir":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2317
    invoke-direct {p0, v10, v11, v2}, Landroid/media/MzMediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2323
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "dataDir":Ljava/lang/String;
    .end local v10    # "rowId":J
    :cond_1
    iget-object v9, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2324
    .local v8, "len":I
    const/4 v7, 0x0

    .line 2325
    .local v7, "index":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_3

    .line 2326
    iget-object v9, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MzMediaScanner$PlaylistEntry;

    .line 2327
    .local v5, "entry":Landroid/media/MzMediaScanner$PlaylistEntry;
    iget v9, v5, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v9, :cond_2

    .line 2329
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->clear()V

    .line 2330
    const-string v9, "play_order"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2331
    const-string v9, "audio_id"

    iget-wide v12, v5, Landroid/media/MzMediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2334
    iget-object v9, p0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v12, p0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v9, v12, v0, v1}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2335
    add-int/lit8 v7, v7, 0x1

    .line 2325
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2336
    :catch_0
    move-exception v4

    .line 2337
    .local v4, "e":Landroid/os/RemoteException;
    const-string v9, "MzMediaScanner"

    const-string v12, "RemoteException in MzMediaScanner.processCachedPlaylist()"

    invoke-static {v9, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2343
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "entry":Landroid/media/MzMediaScanner$PlaylistEntry;
    :goto_1
    return-void

    .line 2342
    :cond_3
    iget-object v9, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2347
    const/4 v4, 0x0

    .line 2349
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2350
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2351
    invoke-static {v2}, Landroid/media/CueHelper;->getCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 2352
    .local v0, "charset":Ljava/lang/String;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2355
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2356
    :goto_0
    if-eqz v3, :cond_1

    .line 2358
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_0

    .line 2359
    invoke-direct {p0, v3, p2}, Landroid/media/MzMediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2364
    :cond_1
    invoke-direct {p0, p5, p4, p3, p2}, Landroid/media/MzMediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 2370
    .end local v0    # "charset":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2371
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2376
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2372
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2373
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "MzMediaScanner"

    const-string v7, "IOException in MzMediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2366
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 2367
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "MzMediaScanner"

    const-string v7, "IOException in MzMediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2370
    if-eqz v4, :cond_3

    .line 2371
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2372
    :catch_2
    move-exception v1

    .line 2373
    const-string v6, "MzMediaScanner"

    const-string v7, "IOException in MzMediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2369
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2370
    :goto_3
    if-eqz v4, :cond_4

    .line 2371
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2374
    :cond_4
    :goto_4
    throw v6

    .line 2372
    :catch_3
    move-exception v1

    .line 2373
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "MzMediaScanner"

    const-string v8, "IOException in MzMediaScanner.processM3uPlayList()"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2369
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2366
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/MzMediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "entry"    # Landroid/media/MzMediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2476
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MzMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2477
    .local v17, "path":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2478
    .local v5, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2479
    .local v14, "lastSlash":I
    if-gez v14, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad path "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2481
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MzMediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v18, v0

    .line 2484
    .local v18, "rowId":J
    const-string v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2485
    .local v16, "name":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 2486
    const-string v2, "title"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2487
    if-nez v16, :cond_1

    .line 2489
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 2490
    .local v13, "lastDot":I
    if-gez v13, :cond_3

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2495
    .end local v13    # "lastDot":I
    :cond_1
    :goto_0
    const-string v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    const-string v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/media/MzMediaScanner$FileEntry;->mLastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2498
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-nez v2, :cond_4

    .line 2499
    const-string v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MzMediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 2501
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2502
    const-string v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2512
    .local v9, "membersUri":Landroid/net/Uri;
    :goto_1
    const/4 v2, 0x0

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2513
    .local v8, "playListDirectory":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v15

    .line 2514
    .local v15, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v15, :cond_5

    const/4 v12, 0x0

    .line 2516
    .local v12, "fileType":I
    :goto_2
    const/16 v2, 0x29

    if-ne v12, v2, :cond_6

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2517
    invoke-direct/range {v6 .. v11}, Landroid/media/MzMediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2518
    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/media/MzMediaScanner;->mM3uMembersUri:Landroid/net/Uri;

    .line 2526
    :cond_2
    :goto_3
    return-void

    .line 2490
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "playListDirectory":Ljava/lang/String;
    .end local v9    # "membersUri":Landroid/net/Uri;
    .end local v12    # "fileType":I
    .end local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v13    # "lastDot":I
    :cond_3
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 2504
    .end local v13    # "lastDot":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MzMediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2505
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2508
    const-string v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2509
    .restart local v9    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v9, v6, v7}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2514
    .restart local v8    # "playListDirectory":Ljava/lang/String;
    .restart local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_5
    iget v12, v15, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_2

    .line 2519
    .restart local v12    # "fileType":I
    :cond_6
    const/16 v2, 0x2a

    if-ne v12, v2, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2520
    invoke-direct/range {v6 .. v11}, Landroid/media/MzMediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2521
    :cond_7
    const/16 v2, 0x2b

    if-ne v12, v2, :cond_8

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2522
    invoke-direct/range {v6 .. v11}, Landroid/media/MzMediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2523
    :cond_8
    const/16 v2, 0x2d

    if-ne v12, v2, :cond_2

    .line 2524
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    # invokes: Landroid/media/MzMediaScanner$MyMediaScannerClient;->processCuePlaylist(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    invoke-static {v2, v3, v0, v9}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->access$4900(Landroid/media/MzMediaScanner$MyMediaScannerClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2529
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mPlaylists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2530
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MzMediaScanner$FileEntry;>;"
    const/4 v9, 0x0

    .line 2534
    .local v9, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Landroid/media/MzMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v4, "media_type=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 2536
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2537
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MzMediaScanner$FileEntry;

    .line 2539
    .local v8, "entry":Landroid/media/MzMediaScanner$FileEntry;
    iget-boolean v0, v8, Landroid/media/MzMediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 2540
    invoke-direct {p0, v8, v9}, Landroid/media/MzMediaScanner;->processPlayList(Landroid/media/MzMediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2543
    .end local v8    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    :catch_0
    move-exception v0

    .line 2545
    if-eqz v9, :cond_1

    .line 2546
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2549
    :cond_1
    :goto_1
    return-void

    .line 2545
    :cond_2
    if-eqz v9, :cond_1

    .line 2546
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2545
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 2546
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2380
    const/4 v4, 0x0

    .line 2382
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2383
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2384
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2386
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2387
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2388
    :goto_0
    if-eqz v3, :cond_1

    .line 2390
    const-string v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2391
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2392
    .local v1, "equals":I
    if-lez v1, :cond_0

    .line 2393
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/MzMediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2399
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MzMediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 2405
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2406
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2411
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2407
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2408
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "MzMediaScanner"

    const-string v7, "IOException in MzMediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2401
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2402
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "MzMediaScanner"

    const-string v7, "IOException in MzMediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2405
    if-eqz v4, :cond_3

    .line 2406
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2407
    :catch_2
    move-exception v0

    .line 2408
    const-string v6, "MzMediaScanner"

    const-string v7, "IOException in MzMediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2404
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2405
    :goto_3
    if-eqz v4, :cond_4

    .line 2406
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2409
    :cond_4
    :goto_4
    throw v6

    .line 2407
    :catch_3
    move-exception v0

    .line 2408
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "MzMediaScanner"

    const-string v8, "IOException in MzMediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2404
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2401
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2449
    const/4 v2, 0x0

    .line 2451
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2452
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2453
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2455
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v4, p0, Landroid/media/MzMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2456
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MzMediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3, p5}, Landroid/media/MzMediaScanner$WplHandler;-><init>(Landroid/media/MzMediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v5}, Landroid/media/MzMediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2459
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MzMediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 2467
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 2468
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2473
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2469
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2470
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MzMediaScanner"

    const-string v5, "IOException in MzMediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2461
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2462
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2467
    if-eqz v2, :cond_1

    .line 2468
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2469
    :catch_2
    move-exception v0

    .line 2470
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MzMediaScanner"

    const-string v5, "IOException in MzMediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2463
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2464
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2467
    if-eqz v2, :cond_1

    .line 2468
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2469
    :catch_4
    move-exception v0

    .line 2470
    const-string v4, "MzMediaScanner"

    const-string v5, "IOException in MzMediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2466
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2467
    :goto_3
    if-eqz v2, :cond_2

    .line 2468
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2471
    :cond_2
    :goto_4
    throw v4

    .line 2469
    :catch_5
    move-exception v0

    .line 2470
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "MzMediaScanner"

    const-string v6, "IOException in MzMediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2466
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2463
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2461
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 17

    .prologue
    .line 1754
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1755
    .local v11, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v10, "/sdcard/DCIM/.thumbnails"

    .line 1756
    .local v10, "directory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    .line 1757
    .local v13, "files":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1758
    .local v9, "c":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 1759
    const/4 v1, 0x0

    new-array v13, v1, [Ljava/lang/String;

    .line 1761
    :cond_0
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v1, v13

    if-ge v15, v1, :cond_1

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v13, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1763
    .local v14, "fullPathString":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1761
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1767
    .end local v14    # "fullPathString":Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MzMediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1774
    const-string v1, "MzMediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1777
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1778
    .restart local v14    # "fullPathString":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1779
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1782
    .end local v14    # "fullPathString":Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1786
    .local v12, "fileToDelete":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1787
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1791
    .end local v12    # "fileToDelete":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v1, "MzMediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1795
    if-eqz v9, :cond_5

    .line 1796
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1799
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    return-void

    .line 1792
    :catch_1
    move-exception v1

    .line 1795
    if-eqz v9, :cond_5

    .line 1796
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1795
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 1796
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 1860
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1862
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 426
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 428
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 430
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MzMediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 432
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method public native extractAlbumArtMZ(Ljava/lang/String;)[B
.end method

.method public native extractLyric(Ljava/lang/String;)[B
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2576
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2577
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->native_finalize()V

    .line 2578
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MzMediaScanner$FileEntry;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2178
    const/4 v13, 0x0

    .line 2180
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "_data=?"

    .line 2181
    .local v4, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 2182
    .local v5, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MzMediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v3, Landroid/media/MzMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v13

    .line 2184
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2185
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2186
    .local v7, "rowId":J
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2187
    .local v12, "format":I
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2188
    .local v10, "lastModified":J
    new-instance v6, Landroid/media/MzMediaScanner$FileEntry;

    move-object/from16 v9, p1

    invoke-direct/range {v6 .. v12}, Landroid/media/MzMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2193
    if-eqz v13, :cond_0

    .line 2194
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2197
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "rowId":J
    .end local v10    # "lastModified":J
    .end local v12    # "format":I
    :cond_0
    :goto_0
    return-object v6

    .line 2193
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    if-eqz v13, :cond_2

    .line 2194
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2197
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 2190
    :catch_0
    move-exception v14

    .line 2191
    .local v14, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2193
    if-eqz v13, :cond_2

    .line 2194
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2193
    .end local v14    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v13, :cond_3

    .line 2194
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2571
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->native_finalize()V

    .line 2572
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 1890
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1891
    .local v10, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MzMediaScanner;->initialize(Ljava/lang/String;)V

    .line 1892
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/media/MzMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1897
    .local v6, "prescan":J
    new-instance v12, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    const/16 v15, 0x1f4

    invoke-direct {v12, v13, v14, v15}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/media/MzMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1900
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_0

    .line 1901
    aget-object v12, p1, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/media/MzMediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1900
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1906
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MzMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v12}, Landroid/media/MediaInserter;->flushAll()V

    .line 1907
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/media/MzMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1911
    .local v8, "scan":J
    invoke-direct/range {p0 .. p1}, Landroid/media/MzMediaScanner;->postscan([Ljava/lang/String;)V

    .line 1912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1915
    .local v4, "end":J
    const-string v12, "MzMediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " prescan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v6, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    const-string v12, "MzMediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    scan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v8, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const-string v12, "MzMediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "postscan time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v4, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const-string v12, "MzMediaScanner"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   total time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v4, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ms\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    .line 1931
    .end local v3    # "i":I
    .end local v4    # "end":J
    .end local v6    # "prescan":J
    .end local v8    # "scan":J
    .end local v10    # "start":J
    :goto_1
    return-void

    .line 1920
    :catch_0
    move-exception v2

    .line 1922
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v12, "MzMediaScanner"

    const-string v13, "SQLException in MzMediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1929
    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    goto :goto_1

    .line 1923
    .end local v2    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v2

    .line 1925
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string v12, "MzMediaScanner"

    const-string v13, "UnsupportedOperationException in MzMediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1929
    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    goto :goto_1

    .line 1926
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 1927
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v12, "MzMediaScanner"

    const-string v13, "RemoteException in MzMediaScanner.scan()"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1929
    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    goto :goto_1

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v12

    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    throw v12
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 38
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 2058
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MzMediaScanner;->initialize(Ljava/lang/String;)V

    .line 2059
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v34

    .line 2060
    .local v34, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v34, :cond_1

    const/16 v33, 0x0

    .line 2061
    .local v33, "fileType":I
    :goto_0
    const-string v4, "MzMediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scanMtpFile fileType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    new-instance v31, Ljava/io/File;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2063
    .local v31, "file":Ljava/io/File;
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v12, 0x3e8

    div-long v14, v4, v12

    .line 2065
    .local v14, "lastModifiedSeconds":J
    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2070
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2071
    .local v7, "values":Landroid/content/ContentValues;
    const-string v4, "_size"

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2072
    const-string v4, "date_modified"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2074
    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_0

    .line 2075
    const-string v4, "title"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/media/MzMediaFile;->getFileTitle(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 2079
    .local v9, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "_id=?"

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v9    # "whereArgs":[Ljava/lang/String;
    :goto_1
    return-void

    .line 2060
    .end local v14    # "lastModifiedSeconds":J
    .end local v31    # "file":Ljava/io/File;
    .end local v33    # "fileType":I
    :cond_1
    move-object/from16 v0, v34

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v33, v0

    goto/16 :goto_0

    .line 2081
    .restart local v7    # "values":Landroid/content/ContentValues;
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v31    # "file":Ljava/io/File;
    .restart local v33    # "fileType":I
    :catch_0
    move-exception v29

    .line 2082
    .local v29, "e":Landroid/os/RemoteException;
    const-string v4, "MzMediaScanner"

    const-string v5, "RemoteException in scanMtpFile"

    move-object/from16 v0, v29

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2087
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v29    # "e":Landroid/os/RemoteException;
    :cond_2
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MzMediaScanner;->mMtpObjectHandle:I

    .line 2088
    const/16 v32, 0x0

    .line 2090
    .local v32, "fileList":Landroid/database/Cursor;
    const/16 v4, 0x2d

    move/from16 v0, v33

    if-ne v0, v4, :cond_b

    .line 2093
    :try_start_1
    new-instance v10, Landroid/media/CueHelper;

    invoke-direct {v10}, Landroid/media/CueHelper;-><init>()V

    .line 2094
    .local v10, "cue":Landroid/media/CueHelper;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/media/CueHelper;->loadCueFile(Ljava/lang/String;)Z

    .line 2095
    invoke-virtual {v10}, Landroid/media/CueHelper;->getMusicFilePath()Ljava/lang/String;

    move-result-object v36

    .line 2096
    .local v36, "musicFilePath":Ljava/lang/String;
    const/16 v37, 0x0

    .line 2098
    .local v37, "processAsNormal":Z
    if-eqz v36, :cond_3

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_7

    .line 2099
    :cond_3
    const/16 v37, 0x1

    .line 2106
    :cond_4
    :goto_2
    if-eqz v37, :cond_9

    .line 2108
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/media/MzMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 2111
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v34

    iget-object v13, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v16

    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_8

    const/16 v18, 0x1

    :goto_3
    const/16 v19, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/MzMediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v20}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2166
    .end local v10    # "cue":Landroid/media/CueHelper;
    .end local v36    # "musicFilePath":Ljava/lang/String;
    .end local v37    # "processAsNormal":Z
    :cond_5
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MzMediaScanner;->mMtpObjectHandle:I

    .line 2167
    if-eqz v32, :cond_6

    .line 2168
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 2170
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    goto :goto_1

    .line 2101
    .restart local v10    # "cue":Landroid/media/CueHelper;
    .restart local v36    # "musicFilePath":Ljava/lang/String;
    .restart local v37    # "processAsNormal":Z
    :cond_7
    :try_start_2
    new-instance v35, Ljava/io/File;

    invoke-direct/range {v35 .. v36}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2102
    .local v35, "musicFile":Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2103
    const/16 v37, 0x1

    goto :goto_2

    .line 2111
    .end local v35    # "musicFile":Ljava/io/File;
    :cond_8
    const/16 v18, 0x0

    goto :goto_3

    .line 2115
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/MzMediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MzMediaScanner$FileEntry;

    move-result-object v30

    .line 2116
    .local v30, "entry":Landroid/media/MzMediaScanner$FileEntry;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2117
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v4, "is_music"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2118
    const-string v4, "media_type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object/from16 v0, v30

    iget-wide v12, v0, Landroid/media/MzMediaScanner$FileEntry;->mRowId:J

    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 2122
    .local v18, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v7

    invoke-interface/range {v16 .. v21}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2125
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MzMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 2127
    invoke-virtual/range {p0 .. p1}, Landroid/media/MzMediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MzMediaScanner$FileEntry;

    move-result-object v30

    .line 2128
    if-eqz v30, :cond_5

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    sget-object v22, Landroid/media/MzMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-interface/range {v19 .. v26}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v32

    .line 2131
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/media/MzMediaScanner;->processPlayList(Landroid/media/MzMediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    .line 2163
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v10    # "cue":Landroid/media/CueHelper;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v30    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    .end local v36    # "musicFilePath":Ljava/lang/String;
    .end local v37    # "processAsNormal":Z
    :catch_1
    move-exception v29

    .line 2164
    .restart local v29    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MzMediaScanner"

    const-string v5, "RemoteException in MzMediaScanner.scanFile()"

    move-object/from16 v0, v29

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2166
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MzMediaScanner;->mMtpObjectHandle:I

    .line 2167
    if-eqz v32, :cond_a

    .line 2168
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 2170
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    goto/16 :goto_1

    .line 2134
    .end local v29    # "e":Landroid/os/RemoteException;
    :cond_b
    :try_start_4
    invoke-static/range {v33 .. v33}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2139
    const/16 v4, 0x29

    move/from16 v0, v33

    if-ne v0, v4, :cond_d

    .line 2140
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MzMediaScanner;->mM3uCopingFlg:Z

    .line 2141
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MzMediaScanner;->mM3uPath:Ljava/lang/String;

    .line 2147
    :goto_5
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MzMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 2149
    invoke-virtual/range {p0 .. p1}, Landroid/media/MzMediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MzMediaScanner$FileEntry;

    move-result-object v30

    .line 2150
    .restart local v30    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    if-eqz v30, :cond_5

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    sget-object v22, Landroid/media/MzMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-interface/range {v19 .. v26}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v32

    .line 2153
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/media/MzMediaScanner;->processPlayList(Landroid/media/MzMediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 2166
    .end local v30    # "entry":Landroid/media/MzMediaScanner$FileEntry;
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/media/MzMediaScanner;->mMtpObjectHandle:I

    .line 2167
    if-eqz v32, :cond_c

    .line 2168
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 2170
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    throw v4

    .line 2143
    :cond_d
    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MzMediaScanner;->mM3uCopingFlg:Z

    goto :goto_5

    .line 2157
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/media/MzMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v24

    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_f

    const/16 v26, 0x1

    :goto_6
    const/16 v27, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/MzMediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v28

    move-object/from16 v20, p1

    move-wide/from16 v22, v14

    invoke-virtual/range {v19 .. v28}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    :cond_f
    const/16 v26, 0x0

    goto :goto_6
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1936
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MzMediaScanner;->initialize(Ljava/lang/String;)V

    .line 1937
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/MzMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1939
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1940
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1941
    const-string v1, "MzMediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scanSingleFile: Not exist path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    const/4 v1, 0x0

    .line 1955
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    .end local v11    # "file":Ljava/io/File;
    :goto_0
    return-object v1

    .line 1946
    .restart local v11    # "file":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 1949
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Landroid/media/MzMediaScanner;->mClient:Landroid/media/MzMediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {p1}, Landroid/media/MzMediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v1 .. v10}, Landroid/media/MzMediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1955
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    goto :goto_0

    .line 1951
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "MzMediaScanner"

    const-string v2, "RemoteException in MzMediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1953
    const/4 v1, 0x0

    .line 1955
    invoke-direct {p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/media/MzMediaScanner;->releaseResources()V

    throw v1
.end method

.method public native setId3Info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
