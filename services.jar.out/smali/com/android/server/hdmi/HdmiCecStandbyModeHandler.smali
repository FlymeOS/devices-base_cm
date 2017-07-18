.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;,
        Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;
    }
.end annotation


# instance fields
.field private final mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mCecMessageHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mTv:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field private final mUserControlProcessedHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiControlService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mTv:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "tv"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    invoke-direct {v0, p0, v3}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 86
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    .line 87
    const/4 v1, 0x1

    .line 86
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 88
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    invoke-direct {v0, p0, v4}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 89
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 90
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;

    invoke-direct {v0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bypasser;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 91
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;

    invoke-direct {v0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 93
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mUserControlProcessedHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;

    .line 96
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 97
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mTv:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 99
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-direct {p0, v4, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAutoOnHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x82

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x85

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x81

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x86

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x36

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x32

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x87

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x45

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x90

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-direct {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x9d

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x7e

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x7a

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBystander:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xc0

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xc5

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x83

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x91

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x84

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x8c

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x46

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x47

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mUserControlProcessedHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$UserControlProcessedHandler;

    const/16 v1, 0x44

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x8f

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 140
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xff

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mBypasser:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x9f

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0xa0

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    const/16 v1, 0x72

    invoke-direct {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V

    .line 95
    return-void
.end method

.method private addHandler(ILcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "handler"    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    return-void
.end method


# virtual methods
.method handleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 160
    .local v0, "handler":Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    invoke-interface {v1, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1
.end method
