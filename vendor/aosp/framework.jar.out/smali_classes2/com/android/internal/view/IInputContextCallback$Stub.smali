.class public abstract Lcom/android/internal/view/IInputContextCallback$Stub;
.super Landroid/os/Binder;
.source "IInputContextCallback.java"

# interfaces
.implements Lcom/android/internal/view/IInputContextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContextCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContextCallback"

.field static final TRANSACTION_setCursorCapsMode:I = 0x3

.field static final TRANSACTION_setExtractedText:I = 0x4

.field static final TRANSACTION_setRequestUpdateCursorAnchorInfoResult:I = 0x6

.field static final TRANSACTION_setSelectedText:I = 0x5

.field static final TRANSACTION_setTextAfterCursor:I = 0x2

.field static final TRANSACTION_setTextBeforeCursor:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContextCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.internal.view.IInputContextCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputContextCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/internal/view/IInputContextCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContextCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 45
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v6

    .line 50
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V

    .line 61
    return v6

    .line 56
    .end local v4    # "_arg1":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Ljava/lang/CharSequence;
    goto :goto_0

    .line 65
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 74
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 75
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setTextAfterCursor(Ljava/lang/CharSequence;I)V

    .line 76
    return v6

    .line 71
    .end local v4    # "_arg1":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_1

    .line 80
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setCursorCapsMode(II)V

    .line 86
    return v6

    .line 90
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    sget-object v5, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/ExtractedText;

    .line 99
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 100
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V

    .line 101
    return v6

    .line 96
    .end local v4    # "_arg1":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/view/inputmethod/ExtractedText;
    goto :goto_2

    .line 105
    .end local v1    # "_arg0":Landroid/view/inputmethod/ExtractedText;
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 114
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setSelectedText(Ljava/lang/CharSequence;I)V

    .line 116
    return v6

    .line 111
    .end local v4    # "_arg1":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_3

    .line 120
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.view.IInputContextCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 124
    .local v3, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 125
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->setRequestUpdateCursorAnchorInfoResult(ZI)V

    .line 126
    return v6

    .line 122
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_4

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
