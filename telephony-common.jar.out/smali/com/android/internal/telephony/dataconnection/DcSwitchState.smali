.class public Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.super Lcom/android/internal/util/StateMachine;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;,
        Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x43000

.field private static final DBG:Z = true

.field private static final EVENT_CLEANUP_ALL:I = 0x43002

.field private static final EVENT_CONNECT:I = 0x43000

.field private static final EVENT_CONNECTED:I = 0x43003

.field private static final EVENT_DETACH_DONE:I = 0x43004

.field private static final EVENT_DISCONNECT:I = 0x43001

.field private static final EVENT_TO_ACTING_DIRECTLY:I = 0x43006

.field private static final EVENT_TO_IDLE_DIRECTLY:I = 0x43005

.field private static final LOG_TAG:Ljava/lang/String; = "DcSwitchState"

.field private static final VDBG:Z


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;

.field private mActingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;

.field private mApnTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeactingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

.field private mId:I

.field private mIdleRegistrants:Landroid/os/RegistrantList;

.field private mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleRegistrants:Landroid/os/RegistrantList;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mApnTypes:Ljava/util/HashSet;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDeactingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    .line 72
    const-string v0, "DcSwitchState constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 74
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDeactingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->setInitialState(Lcom/android/internal/util/State;)V

    .line 83
    const-string v0, "DcSwitchState constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->requestDataIdle()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->teardownConnection(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDeactingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mApnTypes:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->setupConnection(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;

    return-object v0
.end method

.method private requestDataIdle()V
    .locals 5

    .prologue
    .line 109
    const-string v2, "requestDataIdle is triggered"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    .local v0, "itrType":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 115
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 116
    .local v1, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    const v4, 0x43004

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 117
    return-void
.end method

.method private setupConnection(Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DcSwitchState:setupConnection type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method private teardownConnection(Ljava/lang/String;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "No APN is using, then clean up all"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->requestDataIdle()V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDeactingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 104
    :cond_0
    return v1
.end method


# virtual methods
.method public cleanupAllConnection()V
    .locals 1

    .prologue
    .line 128
    const v0, 0x43002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->sendMessage(Landroid/os/Message;)V

    .line 129
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 476
    const-string v0, "DcSwitchState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method public notifyDataConnection(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apnName"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "unavailable"    # Z

    .prologue
    .line 121
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const v0, 0x43003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->sendMessage(Landroid/os/Message;)V

    .line 125
    :cond_0
    return-void
.end method

.method public registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 132
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 134
    return-void
.end method

.method public transitToActingState()V
    .locals 1

    .prologue
    .line 145
    const v0, 0x43006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->sendMessage(Landroid/os/Message;)V

    .line 146
    return-void
.end method

.method public transitToIdleState()V
    .locals 1

    .prologue
    .line 141
    const v0, 0x43005

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->sendMessage(Landroid/os/Message;)V

    .line 142
    return-void
.end method

.method public unregisterForIdle(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 138
    return-void
.end method
