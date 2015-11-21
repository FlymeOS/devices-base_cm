.class final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final SETTING_PATTERN:Ljava/util/regex/Pattern;

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "(\\d+)x(\\d+)/(\\d+)(,[a-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->SETTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .prologue
    .line 75
    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static chooseOverlayGravity(I)I
    .locals 1
    .param p0, "overlayNumber"    # I

    .prologue
    .line 179
    packed-switch p0, :pswitch_data_0

    .line 188
    const/16 v0, 0x53

    :goto_0
    return v0

    .line 181
    :pswitch_0
    const/16 v0, 0x33

    goto :goto_0

    .line 183
    :pswitch_1
    const/16 v0, 0x55

    goto :goto_0

    .line 185
    :pswitch_2
    const/16 v0, 0x35

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateOverlayDisplayDevices()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .locals 23

    .prologue
    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "overlay_display_devices"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 120
    .local v19, "value":Ljava/lang/String;
    if-nez v19, :cond_0

    .line 121
    const-string v19, ""

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 130
    const-string v2, "OverlayDisplayAdapter"

    const-string v3, "Dismissing all overlay display devices."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 132
    .local v17, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    goto :goto_1

    .line 134
    .end local v17    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 137
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v12, 0x0

    .line 138
    .local v12, "count":I
    const-string v2, ";"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, "arr$":[Ljava/lang/String;
    array-length v15, v11

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_2
    if-ge v14, v15, :cond_1

    aget-object v18, v11, v14

    .line 139
    .local v18, "part":Ljava/lang/String;
    sget-object v2, Lcom/android/server/display/OverlayDisplayAdapter;->SETTING_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 140
    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 141
    const/4 v2, 0x4

    if-lt v12, v2, :cond_5

    .line 142
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Too many overlay display devices specified: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_5
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 147
    .local v5, "width":I
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 148
    .local v6, "height":I
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 149
    .local v7, "densityDpi":I
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, "flagString":Ljava/lang/String;
    const/16 v2, 0x64

    if-lt v5, v2, :cond_9

    const/16 v2, 0x1000

    if-gt v5, v2, :cond_9

    const/16 v2, 0x64

    if-lt v6, v2, :cond_9

    const/16 v2, 0x1000

    if-gt v6, v2, :cond_9

    const/16 v2, 0x78

    if-lt v7, v2, :cond_9

    const/16 v2, 0x1e0

    if-gt v7, v2, :cond_9

    .line 154
    add-int/lit8 v12, v12, 0x1

    move v10, v12

    .line 155
    .local v10, "number":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10406b8

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "name":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/display/OverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v8

    .line 159
    .local v8, "gravity":I
    if-eqz v13, :cond_7

    const-string v2, ",secure"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v9, 0x1

    .line 161
    .local v9, "secure":Z
    :goto_3
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Showing overlay display device #"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ": name="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", width="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", height="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", densityDpi="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", secure="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;IIIIZI)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "densityDpi":I
    .end local v8    # "gravity":I
    .end local v9    # "secure":Z
    .end local v10    # "number":I
    .end local v13    # "flagString":Ljava/lang/String;
    :cond_6
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 159
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v7    # "densityDpi":I
    .restart local v8    # "gravity":I
    .restart local v10    # "number":I
    .restart local v13    # "flagString":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 171
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "densityDpi":I
    .end local v8    # "gravity":I
    .end local v10    # "number":I
    .end local v13    # "flagString":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 174
    :cond_9
    :goto_5
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Malformed overlay display devices setting: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 169
    :catch_0
    move-exception v2

    goto :goto_5
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentOverlaySetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOverlays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 86
    .local v1, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 88
    .end local v1    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_0
    return-void
.end method

.method public registerLocked()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 94
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method
