.class public Lcom/android/server/shrinker/PackageStateInfo;
.super Ljava/lang/Object;
.source "PackageStateInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;,
        Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    }
.end annotation


# static fields
.field public static final BAP_APP_MASK:I = 0x6

.field public static final BLACK_NAME:Ljava/lang/String; = "black"

.field public static final CORE_NAME:Ljava/lang/String; = "core"

.field public static final DEFAULT_HOME:Ljava/lang/String; = "com.meizu.flyme.launcher"

.field public static final DISALLOW_MASK:I = 0xd1c

.field public static final DISALLOW_NAME:Ljava/lang/String; = "disallow"

.field public static final DOWNLOADING:Ljava/lang/String; = "downloading"

.field public static final FAVORITE_APP:I = 0x3

.field public static final FAVORITE_NAME:Ljava/lang/String; = "favorite"

.field public static final FAVORITE_PRIORITY_MASK:I = 0xe0

.field private static final FLAGS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/shrinker/PackageStateInfo$IntElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BLACK:I = 0x2

.field public static final FLAG_DISALLOW:I = 0x4

.field public static final FLAG_IGNORE:I = 0x10

.field public static final FLAG_NOTIFICATION:I = 0x8

.field public static final HOME_NAME:Ljava/lang/String; = "home"

.field public static final IGNORE_NAME:Ljava/lang/String; = "ignore"

.field public static final LOCKED_NAME:Ljava/lang/String; = "locked"

.field public static final MASK_ALL:I = -0x1

.field public static final MOVING:Ljava/lang/String; = "moving"

.field public static final NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final NONE:Ljava/lang/String; = ""

.field public static final NORMAL_NAME:Ljava/lang/String; = "normal"

.field public static final NORMAL_WHITE_APP:I = 0x5

.field private static final NOTIFICATIONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_NAME:Ljava/lang/String; = "notification"

.field public static final PLAYBACKING:Ljava/lang/String; = "playbacking"

.field public static final PRIORITY_CORE:I = 0x8

.field public static final PRIORITY_FAVORITE:I = 0x80

.field public static final PRIORITY_HOME:I = 0x800

.field public static final PRIORITY_LOCKED:I = 0x20

.field private static final PRIORITY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/shrinker/PackageStateInfo$IntElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_NORMAL:I = 0x2

.field public static final PRIORITY_RECENT:I = 0x10

.field public static final PRIORITY_SELECTED:I = 0x40

.field public static final PRIORITY_SUPER:I = 0x200

.field public static final PRIORITY_SYSTEM:I = 0x4

.field public static final PRIORITY_VISIBLE:I = 0x400

.field public static final PRIORITY_WORKING:I = 0x100

.field public static final RECENT_LOCK_APP:I = 0x2

.field public static final RECENT_NAME:Ljava/lang/String; = "recent"

.field public static final RECORDING:Ljava/lang/String; = "recording"

.field public static final SCREEN_RECORD:Ljava/lang/String; = "screen_record"

.field public static final SELECTED_NAME:Ljava/lang/String; = "selected"

.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_MOVING:I = 0x10

.field public static final STATE_NAVIGATION:I = 0x4

.field public static final STATE_PLAYBACKING:I = 0x2

.field public static final STATE_RECORDING:I = 0x8

.field public static final STATE_SCREEN_RECORD:I = 0x20

.field public static final SUPER_NAME:Ljava/lang/String; = "super"

.field public static final SUPER_WHITE_APP:I = 0x4

.field public static final SYSTEM_NAME:Ljava/lang/String; = "system"

.field public static final SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "Shrinker"

.field public static final TENCENT_MM:Ljava/lang/String; = "com.tencent.mm"

.field public static final TENCENT_MOBILEQQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field public static final TYPE_FLAGS:I = 0x1

.field public static final TYPE_PRIORITY:I = 0x0

.field public static final USER_WHITE_APP:I = 0x1

.field public static final VISIBLE_NAME:Ljava/lang/String; = "visible"

.field public static final WORKING_NAME:Ljava/lang/String; = "working"

.field private static final WORK_APP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORK_STATE_APP:I

.field private static sLastClearTime:J

.field private static sLastUpdateAlphaMeTime:J

.field private static sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;


# direct methods
.method static synthetic -wrap0(Ljava/util/List;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;

    .prologue
    invoke-static {p0}, Lcom/android/server/shrinker/PackageStateInfo;->setFavoriteList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Ljava/util/List;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;

    .prologue
    invoke-static {p0}, Lcom/android/server/shrinker/PackageStateInfo;->setLockedList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap2(Ljava/util/List;)V
    .locals 0
    .param p0, "list"    # Ljava/util/List;

    .prologue
    invoke-static {p0}, Lcom/android/server/shrinker/PackageStateInfo;->setWorkingList(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v5, 0x80

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 92
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .line 93
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .line 94
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->WORK_APP_LIST:Ljava/util/ArrayList;

    .line 97
    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/shrinker/PackageStateInfo;->sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0x20

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v1, "coreAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v3, "systemAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v2, "superAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v0, "blackAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "android"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string/jumbo v4, "com.android.systemui"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const-string/jumbo v4, "com.meizu.alphame"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const-string/jumbo v4, "com.android.phone"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const-string/jumbo v4, "com.meizu.experiencedatasync"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const-string/jumbo v4, "com.amap.android.location"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const-string/jumbo v4, "com.android.providers.media"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string/jumbo v4, "com.android.providers.downloads"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string/jumbo v4, "com.android.providers.contacts"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const-string/jumbo v4, "com.meizu.flyme.providers.forcetouch"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const-string/jumbo v4, "com.meizu.flyme.service.find"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const-string/jumbo v4, "com.meizu.cloud"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const-string/jumbo v4, "com.meizu.mzsyncservice"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const-string/jumbo v4, "com.meizu.battery"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const-string/jumbo v4, "com.meizu.safe"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    const-string/jumbo v4, "com.meizu.privacy"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string/jumbo v4, "com.flyme.netadmin"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string/jumbo v4, "com.android.providers.applications"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string/jumbo v4, "com.android.providers.calendar"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const-string/jumbo v4, "com.android.defcontainer"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    const-string/jumbo v4, "com.android.packageinstaller"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    const-string/jumbo v4, "com.meizu.flyme.telecom"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    const-string/jumbo v4, "com.meizu.flymecommunication"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const-string/jumbo v4, "com.meizu.share"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Lcom/android/server/shrinker/Utils;->isSamSung()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const-string/jumbo v4, "com.aricent.ims.service"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    const-string/jumbo v4, "com.sec.jniril"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const-string/jumbo v4, "com.android.smspush"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const-string/jumbo v4, "com.nxp.nfceeapi.service"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    invoke-static {}, Lcom/android/server/shrinker/Utils;->isMTK()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    const-string/jumbo v4, "com.mediatek.atci.service"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    const-string/jumbo v4, "com.meizu.mstore"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const-string/jumbo v4, "com.android.mms"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string/jumbo v4, "com.android.dialer"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string/jumbo v4, "com.meizu.account"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const-string/jumbo v4, "com.android.alarmclock"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const-string/jumbo v4, "com.meizu.flyme.update"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string/jumbo v4, "com.meizu.net.pedometer"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const-string/jumbo v4, "com.tencent.mm"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    const-string/jumbo v4, "com.tencent.mobileqq"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const-string/jumbo v4, "com.iflytek.speechsuite"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string/jumbo v4, "com.android.browser"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const-string/jumbo v4, "com.UCMobile"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    const/16 v4, 0x200

    invoke-static {v7, v2, v4, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 159
    const/4 v4, 0x4

    invoke-static {v7, v3, v4, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 160
    const/16 v4, 0x8

    invoke-static {v7, v1, v4, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 161
    const/4 v4, 0x1

    invoke-static {v4, v0, v8, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(I)V
    .locals 6
    .param p0, "type"    # I

    .prologue
    .line 299
    if-nez p0, :cond_1

    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .line 300
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v3

    .line 301
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v4, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 303
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    iget v5, v5, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    if-nez v5, :cond_0

    .line 305
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 300
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 299
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_1
    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    .line 308
    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 309
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    monitor-exit v3

    .line 298
    return-void
.end method

.method public static description(II)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 452
    if-nez p1, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 454
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez p0, :cond_c

    .line 455
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_1

    .line 456
    const-string/jumbo v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_1
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_2

    .line 460
    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_2
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_3

    .line 464
    const-string/jumbo v1, "super"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_3
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_4

    .line 468
    const-string/jumbo v1, "working"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_4
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_5

    .line 472
    const-string/jumbo v1, "selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_5
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_6

    .line 476
    const-string/jumbo v1, "locked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_6
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7

    .line 480
    const-string/jumbo v1, "favorite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_7
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_8

    .line 484
    const-string/jumbo v1, "recent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_8
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_9

    .line 488
    const-string/jumbo v1, "core"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_9
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_a

    .line 492
    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_a
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_b

    .line 496
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_b
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 499
    :cond_c
    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    .line 500
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_d

    .line 501
    const-string/jumbo v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_d
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_e

    .line 505
    const-string/jumbo v1, "disallow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_e
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_f

    .line 509
    const-string/jumbo v1, "ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_f
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_b

    .line 513
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static dump()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 554
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v6}, Lcom/android/server/shrinker/PackageStateInfo;->clear(I)V

    .line 555
    invoke-static {v5}, Lcom/android/server/shrinker/PackageStateInfo;->clear(I)V

    .line 556
    sget-object v5, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    monitor-enter v5

    .line 557
    :try_start_0
    sget-object v4, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 558
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "Priority :\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 560
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    sget-object v4, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    iget v4, v4, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    const/4 v6, 0x0

    invoke-static {v6, v4}, Lcom/android/server/shrinker/PackageStateInfo;->description(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string/jumbo v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 556
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v5

    .line 566
    sget-object v5, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    monitor-enter v5

    .line 567
    :try_start_1
    sget-object v4, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 568
    const-string/jumbo v4, "Flags :\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 570
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string/jumbo v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    sget-object v4, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    iget v4, v4, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    const/4 v6, 0x1

    invoke-static {v6, v4}, Lcom/android/server/shrinker/PackageStateInfo;->description(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string/jumbo v4, "]\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 566
    .end local v1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static get(ILjava/lang/String;)I
    .locals 3
    .param p0, "type"    # I
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 261
    if-nez p0, :cond_0

    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .line 262
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v1

    .line 263
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .local v0, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    if-nez v0, :cond_1

    monitor-exit v1

    .line 265
    return v2

    .line 261
    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_0
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    .line 267
    .restart local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :cond_1
    :try_start_1
    iget v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v2

    .line 262
    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static initializeIfNeeded()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 401
    .local v0, "time":J
    sget-wide v2, Lcom/android/server/shrinker/PackageStateInfo;->sLastClearTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 402
    invoke-static {v7}, Lcom/android/server/shrinker/PackageStateInfo;->clear(I)V

    .line 403
    invoke-static {v6}, Lcom/android/server/shrinker/PackageStateInfo;->clear(I)V

    .line 404
    sput-wide v0, Lcom/android/server/shrinker/PackageStateInfo;->sLastClearTime:J

    .line 407
    :cond_0
    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    if-nez v2, :cond_1

    .line 408
    new-instance v2, Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    invoke-direct {v2, v8}, Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;-><init>(Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;)V

    sput-object v2, Lcom/android/server/shrinker/PackageStateInfo;->sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    .line 409
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->sReceiver:Lcom/android/server/shrinker/PackageStateInfo$AlphaMeActionReceiver;

    invoke-virtual {v2, v3}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 410
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string/jumbo v3, "getAppListByType"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->setFavoriteList(Ljava/util/List;)V

    .line 411
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string/jumbo v3, "getAppListByType"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->setLockedList(Ljava/util/List;)V

    .line 412
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string/jumbo v3, "getAppListByType"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->setWorkingList(Ljava/util/List;)V

    .line 413
    const-string/jumbo v2, "Shrinker"

    const-string/jumbo v3, "PackageStateInfo inited"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    sget-wide v2, Lcom/android/server/shrinker/PackageStateInfo;->sLastUpdateAlphaMeTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 418
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v2

    const-string/jumbo v3, "getAppListByType"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/shrinker/PackageStateInfo;->setNormalList(Ljava/util/List;)V

    .line 419
    sput-wide v0, Lcom/android/server/shrinker/PackageStateInfo;->sLastUpdateAlphaMeTime:J

    .line 399
    :cond_2
    return-void
.end method

.method public static isBadApp(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 387
    and-int/lit8 v1, p0, 0x6

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBadApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/shrinker/PackageStateInfo;->isBadApp(I)Z

    move-result v0

    return v0
.end method

.method public static isBlack(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 379
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCore(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-static {v0, p0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDisallow(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 375
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFavorite(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    .line 367
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFavorite(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/shrinker/PackageStateInfo;->isFavorite(I)Z

    move-result v0

    return v0
.end method

.method public static isHome(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    .line 343
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isIgnore(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 391
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNormal(I)Z
    .locals 1
    .param p0, "priority"    # I

    .prologue
    .line 355
    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotification(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 395
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRecent(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    .line 339
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSuper(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    .line 363
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isVisible(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    .line 347
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isWorking(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    const/4 v0, 0x0

    .line 351
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static notifyPosted(Ljava/lang/String;I)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    .line 272
    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    monitor-enter v2

    .line 273
    :try_start_0
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 274
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 276
    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-static {v1, p0, v3, v4}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/lang/String;II)V

    .line 279
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 271
    return-void

    .line 272
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static notifyRemoved(Ljava/lang/String;I)V
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "id"    # I

    .prologue
    .line 286
    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    monitor-enter v2

    .line 287
    :try_start_0
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 288
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->NOTIFICATIONS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v4, -0x9

    invoke-static {v1, p0, v3, v4}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 285
    return-void

    .line 286
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static reset(II)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "mask"    # I

    .prologue
    .line 252
    if-nez p0, :cond_0

    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .line 253
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v2

    .line 254
    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    .line 255
    .local v0, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    iget v3, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    and-int/2addr v3, p1

    iput v3, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 253
    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .end local v1    # "element$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 252
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_0
    sget-object v2, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    .restart local v1    # "element$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v2

    .line 251
    return-void
.end method

.method public static set(ILjava/lang/String;II)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "mask"    # I

    .prologue
    .line 165
    if-nez p0, :cond_1

    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .line 166
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v1

    .line 167
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    .line 168
    .local v0, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    invoke-direct {v0}, Lcom/android/server/shrinker/PackageStateInfo$IntElement;-><init>()V

    .line 170
    .restart local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    iget v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    or-int/2addr v2, p2

    iput v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    .line 173
    iget v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    and-int/2addr v2, p3

    iput v2, v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 175
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/shrinker/Shrinker;->statusChanded()V

    .line 164
    return-void

    .line 165
    .end local v0    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_1
    sget-object v1, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static set(ILjava/util/List;II)V
    .locals 7
    .param p0, "type"    # I
    .param p2, "val"    # I
    .param p3, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    .line 180
    :cond_1
    if-nez p0, :cond_4

    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->PRIORITY_MAP:Ljava/util/HashMap;

    .line 181
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :goto_0
    monitor-enter v3

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .local v5, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 184
    .local v4, "pkg":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 185
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    move-object v1, v0

    .line 186
    .local v1, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    if-nez v1, :cond_3

    .line 187
    new-instance v2, Lcom/android/server/shrinker/PackageStateInfo$IntElement;

    invoke-direct {v2}, Lcom/android/server/shrinker/PackageStateInfo$IntElement;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .local v2, "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :try_start_1
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 190
    .end local v2    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .restart local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    :cond_3
    :try_start_2
    iget v6, v1, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    or-int/2addr v6, p2

    iput v6, v1, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    .line 191
    iget v6, v1, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I

    and-int/2addr v6, p3

    iput v6, v1, Lcom/android/server/shrinker/PackageStateInfo$IntElement;->value:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 181
    .end local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v3

    throw v6

    .line 180
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    :cond_4
    sget-object v3, Lcom/android/server/shrinker/PackageStateInfo;->FLAGS_MAP:Ljava/util/HashMap;

    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/shrinker/PackageStateInfo$IntElement;>;"
    goto :goto_0

    .restart local v5    # "pkg$iterator":Ljava/util/Iterator;
    :cond_5
    monitor-exit v3

    .line 178
    return-void

    .line 181
    .restart local v2    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .restart local v4    # "pkg":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    .restart local v1    # "element":Lcom/android/server/shrinker/PackageStateInfo$IntElement;
    goto :goto_2
.end method

.method private static setDisallowList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 247
    const/4 v0, -0x5

    invoke-static {v2, v0}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    .line 248
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 246
    return-void
.end method

.method private static setFavoriteList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 198
    const/16 v3, -0x81

    invoke-static {v5, v3}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    .line 199
    const/16 v3, 0x80

    const/4 v4, -0x1

    invoke-static {v5, p0, v3, v4}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 200
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "preload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    .local v0, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/android/server/shrinker/PackageStateInfo;->get(ILjava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x6

    if-nez v3, :cond_2

    .line 204
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/android/server/am/Ams_Interface;->loadFavoriteApps(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static setIgnoreList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v2, 0x10

    const/4 v1, 0x1

    .line 315
    invoke-static {v1, v2}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    .line 316
    const/4 v0, -0x1

    invoke-static {v1, p0, v2, v0}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 314
    return-void
.end method

.method public static setIntercept(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v4, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "disallowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 334
    :cond_0
    invoke-static {v4}, Lcom/android/server/shrinker/PackageStateInfo;->setSelectedList(Ljava/util/List;)V

    .line 335
    invoke-static {v0}, Lcom/android/server/shrinker/PackageStateInfo;->setDisallowList(Ljava/util/List;)V

    .line 319
    return-void

    .line 324
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 325
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 327
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 329
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static setLockedList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 217
    invoke-static {}, Lcom/android/server/am/Ams_Utils;->hasAppCloneFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p0, :cond_2

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 220
    .local v0, "index":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "str$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 222
    if-eq v0, v6, :cond_0

    .line 223
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    move-object p0, v1

    .line 230
    .end local v0    # "index":I
    .end local v1    # "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "str$iterator":Ljava/util/Iterator;
    :cond_2
    const/16 v4, -0x21

    invoke-static {v5, v4}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    .line 231
    const/16 v4, 0x20

    invoke-static {v5, p0, v4, v6}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 216
    return-void
.end method

.method private static setNormalList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 212
    const/4 v0, -0x3

    invoke-static {v2, v0}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    .line 213
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 211
    return-void
.end method

.method private static setSelectedList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 235
    const/16 v0, -0x41

    invoke-static {v2, v0}, Lcom/android/server/shrinker/PackageStateInfo;->reset(II)V

    .line 236
    const/16 v0, 0x40

    const/4 v1, -0x1

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 234
    return-void
.end method

.method private static setWorkingList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 240
    sget-object v0, Lcom/android/server/shrinker/PackageStateInfo;->WORK_APP_LIST:Ljava/util/ArrayList;

    const/16 v1, -0x101

    invoke-static {v2, v0, v2, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 241
    const/16 v0, 0x100

    const/4 v1, -0x1

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/shrinker/PackageStateInfo;->set(ILjava/util/List;II)V

    .line 242
    sget-object v0, Lcom/android/server/shrinker/PackageStateInfo;->WORK_APP_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/shrinker/PackageStateInfo;->WORK_APP_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    :cond_0
    return-void
.end method

.method public static workingState(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    const/4 v2, 0x0

    .line 522
    if-nez p0, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    .line 523
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 524
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 525
    const-string/jumbo v1, "downloading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_1
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_2

    .line 529
    const-string/jumbo v1, "moving"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    .line 533
    const-string/jumbo v1, "navigation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_3
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    .line 537
    const-string/jumbo v1, "playbacking"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_4
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_5

    .line 541
    const-string/jumbo v1, "recording"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    .line 546
    const-string/jumbo v1, "screen_record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
