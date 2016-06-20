.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Listener;,
        Landroid/telecom/Call$Details;
    }
.end annotation


# static fields
.field public static final AVAILABLE_PHONE_ACCOUNTS:Ljava/lang/String; = "selectPhoneAccountAccounts"

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_CONNECTING:I = 0x9

.field public static final STATE_DIALING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x7

.field public static final STATE_DISCONNECTING:I = 0xa

.field public static final STATE_HOLDING:I = 0x3

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_PRE_DIAL_WAIT:I = 0x8

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mCannedTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenCached:Z

.field private final mChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mDetails:Landroid/telecom/Call$Details;

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field public mIsActiveSub:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mParentId:Ljava/lang/String;

.field private final mPhone:Landroid/telecom/Phone;

.field private mRemainingPostDialSequence:Ljava/lang/String;

.field private mState:I

.field private final mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;Z)V
    .locals 3
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "isActiveSub"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 596
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 597
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 599
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 603
    iput-object v2, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 605
    iput-object v2, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 611
    iput-boolean v1, p0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 868
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 869
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 870
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 871
    iput v1, p0, Landroid/telecom/Call;->mState:I

    .line 872
    iput-boolean p4, p0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 873
    return-void
.end method

.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;ZI)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "isActiveSub"    # Z
    .param p5, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 596
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 597
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 599
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 603
    iput-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 605
    iput-object v1, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 878
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 879
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 880
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 881
    iput p5, p0, Landroid/telecom/Call;->mState:I

    .line 882
    iput-boolean p4, p0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 883
    return-void
.end method

.method private fireCallDestroyed()V
    .locals 3

    .prologue
    .line 1052
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1053
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Call$Listener;->onCallDestroyed(Landroid/telecom/Call;)V

    goto :goto_0

    .line 1055
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireCannedTextResponsesLoaded(Ljava/util/List;)V
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
    .line 1034
    .local p1, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1035
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V

    goto :goto_0

    .line 1037
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireChildrenChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1022
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1023
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V

    goto :goto_0

    .line 1025
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireConferenceableCallsChanged()V
    .locals 3

    .prologue
    .line 1058
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1059
    .local v1, "listener":Landroid/telecom/Call$Listener;
    iget-object v2, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Call$Listener;->onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V

    goto :goto_0

    .line 1061
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 1028
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1029
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    goto :goto_0

    .line 1031
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireParentChanged(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "newParent"    # Landroid/telecom/Call;

    .prologue
    .line 1016
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1017
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V

    goto :goto_0

    .line 1019
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private firePostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 1046
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1047
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V

    goto :goto_0

    .line 1049
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 1010
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1011
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onStateChanged(Landroid/telecom/Call;I)V

    goto :goto_0

    .line 1013
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .locals 3
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 1040
    iget-object v2, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Listener;

    .line 1041
    .local v1, "listener":Landroid/telecom/Call$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Call$Listener;->onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    goto :goto_0

    .line 1043
    .end local v1    # "listener":Landroid/telecom/Call$Listener;
    :cond_0
    return-void
.end method

.method private stateFromParcelableCallState(I)I
    .locals 4
    .param p1, "parcelableCallState"    # I

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1064
    packed-switch p1, :pswitch_data_0

    .line 1086
    const-string v2, "Unrecognized CallState %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    :goto_0
    :pswitch_0
    return v0

    .line 1068
    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 1070
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1072
    goto :goto_0

    .line 1074
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 1076
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 1078
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 1080
    goto :goto_0

    :pswitch_8
    move v0, v2

    .line 1082
    goto :goto_0

    .line 1084
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 1064
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public addListener(Landroid/telecom/Call$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Call$Listener;

    .prologue
    .line 852
    iget-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    return-void
.end method

.method public answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 628
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    .line 629
    return-void
.end method

.method public conference(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "callToConferenceWith"    # Landroid/telecom/Call;

    .prologue
    .line 731
    if-eqz p1, :cond_0

    .line 732
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_0
    return-void
.end method

.method public deflectCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 637
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->deflectCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public getCannedTextResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    iget-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 778
    iget-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    if-nez v3, :cond_1

    .line 779
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 780
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 782
    iget-object v3, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 783
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v3, v2}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 784
    .local v0, "call":Landroid/telecom/Call;
    if-nez v0, :cond_0

    .line 786
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_0

    .line 788
    :cond_0
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 793
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    return-object v3
.end method

.method public getConferenceableCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public getDetails()Landroid/telecom/Call$Details;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    return-object v0
.end method

.method public getParent()Landroid/telecom/Call;
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 768
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemainingPostDialSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Landroid/telecom/Call;->mState:I

    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-object v0
.end method

.method public hold()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method final internalGetCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method final internalSetDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 1001
    iget v0, p0, Landroid/telecom/Call;->mState:I

    if-eq v0, v1, :cond_0

    .line 1002
    iput v1, p0, Landroid/telecom/Call;->mState:I

    .line 1003
    iget v0, p0, Landroid/telecom/Call;->mState:I

    invoke-direct {p0, v0}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 1004
    invoke-direct {p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 1005
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 1007
    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;)V
    .locals 1
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 995
    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    .line 996
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method final internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .locals 33
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/ParcelableCall;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p2, "callIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Call;>;"
    new-instance v3, Landroid/telecom/Call$Details;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandlePresentation()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayNamePresentation()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getProperties()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCreateTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConnectTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoState()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallSubstate()I

    move-result v20

    invoke-direct/range {v3 .. v20}, Landroid/telecom/Call$Details;-><init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JJLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;I)V

    .line 909
    .local v3, "details":Landroid/telecom/Call$Details;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v25, 0x1

    .line 910
    .local v25, "detailsChanged":Z
    :goto_0
    if-eqz v25, :cond_0

    .line 911
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 914
    :cond_0
    const/4 v2, 0x0

    .line 915
    .local v2, "cannedTextResponsesChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 917
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 921
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v32, 0x1

    .line 922
    .local v32, "videoCallChanged":Z
    :goto_1
    if-eqz v32, :cond_2

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 926
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->stateFromParcelableCallState(I)I

    move-result v30

    .line 927
    .local v30, "state":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    move/from16 v0, v30

    if-ne v4, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/telecom/Call;->mIsActiveSub:Z

    move-object/from16 v0, p1

    iget-boolean v5, v0, Landroid/telecom/ParcelableCall;->mIsActiveSub:Z

    if-eq v4, v5, :cond_a

    :cond_3
    const/16 v31, 0x1

    .line 928
    .local v31, "stateChanged":Z
    :goto_2
    if-eqz v31, :cond_4

    .line 929
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telecom/Call;->mState:I

    .line 930
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/telecom/ParcelableCall;->mIsActiveSub:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/telecom/Call;->mIsActiveSub:Z

    .line 933
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v29

    .line 934
    .local v29, "parentId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const/16 v28, 0x1

    .line 935
    .local v28, "parentChanged":Z
    :goto_3
    if-eqz v28, :cond_5

    .line 936
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 939
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v21

    .line 940
    .local v21, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v22, 0x1

    .line 941
    .local v22, "childrenChanged":Z
    :goto_4
    if-eqz v22, :cond_6

    .line 942
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 944
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 947
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    move-result-object v23

    .line 948
    .local v23, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 949
    .local v24, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 950
    .local v27, "otherId":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 951
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 909
    .end local v2    # "cannedTextResponsesChanged":Z
    .end local v21    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "childrenChanged":Z
    .end local v23    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v25    # "detailsChanged":Z
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v27    # "otherId":Ljava/lang/String;
    .end local v28    # "parentChanged":Z
    .end local v29    # "parentId":Ljava/lang/String;
    .end local v30    # "state":I
    .end local v31    # "stateChanged":Z
    .end local v32    # "videoCallChanged":Z
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 921
    .restart local v2    # "cannedTextResponsesChanged":Z
    .restart local v25    # "detailsChanged":Z
    :cond_9
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 927
    .restart local v30    # "state":I
    .restart local v32    # "videoCallChanged":Z
    :cond_a
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 934
    .restart local v29    # "parentId":Ljava/lang/String;
    .restart local v31    # "stateChanged":Z
    :cond_b
    const/16 v28, 0x0

    goto :goto_3

    .line 940
    .restart local v21    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "parentChanged":Z
    :cond_c
    const/16 v22, 0x0

    goto :goto_4

    .line 955
    .restart local v22    # "childrenChanged":Z
    .restart local v23    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v26    # "i$":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 957
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 958
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    .line 964
    :cond_e
    if-eqz v31, :cond_f

    .line 965
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 967
    :cond_f
    if-eqz v25, :cond_10

    .line 968
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 970
    :cond_10
    if-eqz v2, :cond_11

    .line 971
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    .line 973
    :cond_11
    if-eqz v32, :cond_12

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    .line 976
    :cond_12
    if-eqz v28, :cond_13

    .line 977
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    .line 979
    :cond_13
    if-eqz v22, :cond_14

    .line 980
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    .line 987
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_15

    .line 988
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 989
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 991
    :cond_15
    return-void
.end method

.method public mergeConference()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 721
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 723
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    .line 680
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 681
    return-void
.end method

.method public postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    .prologue
    .line 713
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 714
    return-void
.end method

.method public reject(ZLjava/lang/String;)V
    .locals 2
    .param p1, "rejectWithMessage"    # Z
    .param p2, "textMessage"    # Ljava/lang/String;

    .prologue
    .line 647
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 648
    return-void
.end method

.method public removeListener(Landroid/telecom/Call$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Call$Listener;

    .prologue
    .line 861
    if-eqz p1, :cond_0

    .line 862
    iget-object v0, p0, Landroid/telecom/Call;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 864
    :cond_0
    return-void
.end method

.method public splitFromConference()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public swapConference()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public unhold()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telecom/Call;->phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    return-void
.end method

.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/telecom/Call;-><init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;Z)V

    return-void
.end method
