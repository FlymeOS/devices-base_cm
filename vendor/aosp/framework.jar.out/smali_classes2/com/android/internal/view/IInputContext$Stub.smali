.class public abstract Lcom/android/internal/view/IInputContext$Stub;
.super Landroid/os/Binder;
.source "IInputContext.java"

# interfaces
.implements Lcom/android/internal/view/IInputContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContext$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContext"

.field static final TRANSACTION_beginBatchEdit:I = 0xe

.field static final TRANSACTION_clearMetaKeyStates:I = 0x12

.field static final TRANSACTION_commitCompletion:I = 0x9

.field static final TRANSACTION_commitCorrection:I = 0xa

.field static final TRANSACTION_commitText:I = 0x8

.field static final TRANSACTION_deleteSurroundingText:I = 0x5

.field static final TRANSACTION_endBatchEdit:I = 0xf

.field static final TRANSACTION_finishComposingText:I = 0x7

.field static final TRANSACTION_getCursorCapsMode:I = 0x3

.field static final TRANSACTION_getExtractedText:I = 0x4

.field static final TRANSACTION_getSelectedText:I = 0x15

.field static final TRANSACTION_getTextAfterCursor:I = 0x2

.field static final TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final TRANSACTION_performContextMenuAction:I = 0xd

.field static final TRANSACTION_performEditorAction:I = 0xc

.field static final TRANSACTION_performPrivateCommand:I = 0x13

.field static final TRANSACTION_reportFullscreenMode:I = 0x10

.field static final TRANSACTION_requestUpdateCursorAnchorInfo:I = 0x16

.field static final TRANSACTION_sendKeyEvent:I = 0x11

.field static final TRANSACTION_setComposingRegion:I = 0x14

.field static final TRANSACTION_setComposingText:I = 0x6

.field static final TRANSACTION_setSelection:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.android.internal.view.IInputContext"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "com.android.internal.view.IInputContext"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputContext;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/view/IInputContext;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputContext$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 298
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    .line 47
    :sswitch_0
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v14, 0x1

    return v14

    .line 52
    :sswitch_1
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 58
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 60
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v13

    .line 61
    .local v13, "_arg3":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v11, v13}, Lcom/android/internal/view/IInputContext$Stub;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 62
    const/4 v14, 0x1

    return v14

    .line 66
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_2
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 72
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 74
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v13

    .line 75
    .restart local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v11, v13}, Lcom/android/internal/view/IInputContext$Stub;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 76
    const/4 v14, 0x1

    return v14

    .line 80
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_3
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 86
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v12

    .line 87
    .local v12, "_arg2":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v12}, Lcom/android/internal/view/IInputContext$Stub;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    .line 88
    const/4 v14, 0x1

    return v14

    .line 92
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_4
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_0

    .line 95
    sget-object v14, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/ExtractedTextRequest;

    .line 101
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 103
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 105
    .restart local v11    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v13

    .line 106
    .restart local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v5, v9, v11, v13}, Lcom/android/internal/view/IInputContext$Stub;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    .line 107
    const/4 v14, 0x1

    return v14

    .line 98
    .end local v9    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v13    # "_arg3":Lcom/android/internal/view/IInputContextCallback;
    :cond_0
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/view/inputmethod/ExtractedTextRequest;
    goto :goto_0

    .line 111
    .end local v5    # "_arg0":Landroid/view/inputmethod/ExtractedTextRequest;
    :sswitch_5
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 116
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingText(II)V

    .line 117
    const/4 v14, 0x1

    return v14

    .line 121
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_6
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    .line 124
    sget-object v14, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 130
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 131
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v6, v9}, Lcom/android/internal/view/IInputContext$Stub;->setComposingText(Ljava/lang/CharSequence;I)V

    .line 132
    const/4 v14, 0x1

    return v14

    .line 127
    .end local v9    # "_arg1":I
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg0":Ljava/lang/CharSequence;
    goto :goto_1

    .line 136
    .end local v6    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_7
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->finishComposingText()V

    .line 138
    const/4 v14, 0x1

    return v14

    .line 142
    :sswitch_8
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2

    .line 145
    sget-object v14, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 151
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 152
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v6, v9}, Lcom/android/internal/view/IInputContext$Stub;->commitText(Ljava/lang/CharSequence;I)V

    .line 153
    const/4 v14, 0x1

    return v14

    .line 148
    .end local v9    # "_arg1":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Ljava/lang/CharSequence;
    goto :goto_2

    .line 157
    .end local v6    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_9
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    .line 160
    sget-object v14, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/CompletionInfo;

    .line 165
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/internal/view/IInputContext$Stub;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    .line 166
    const/4 v14, 0x1

    return v14

    .line 163
    :cond_3
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/view/inputmethod/CompletionInfo;
    goto :goto_3

    .line 170
    .end local v3    # "_arg0":Landroid/view/inputmethod/CompletionInfo;
    :sswitch_a
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_4

    .line 173
    sget-object v14, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/CorrectionInfo;

    .line 178
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/internal/view/IInputContext$Stub;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 179
    const/4 v14, 0x1

    return v14

    .line 176
    :cond_4
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/view/inputmethod/CorrectionInfo;
    goto :goto_4

    .line 183
    .end local v4    # "_arg0":Landroid/view/inputmethod/CorrectionInfo;
    :sswitch_b
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 188
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputContext$Stub;->setSelection(II)V

    .line 189
    const/4 v14, 0x1

    return v14

    .line 193
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_c
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performEditorAction(I)V

    .line 197
    const/4 v14, 0x1

    return v14

    .line 201
    .end local v1    # "_arg0":I
    :sswitch_d
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performContextMenuAction(I)V

    .line 205
    const/4 v14, 0x1

    return v14

    .line 209
    .end local v1    # "_arg0":I
    :sswitch_e
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->beginBatchEdit()V

    .line 211
    const/4 v14, 0x1

    return v14

    .line 215
    :sswitch_f
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->endBatchEdit()V

    .line 217
    const/4 v14, 0x1

    return v14

    .line 221
    :sswitch_10
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_5

    const/4 v8, 0x1

    .line 224
    .local v8, "_arg0":Z
    :goto_5
    invoke-virtual {p0, v8}, Lcom/android/internal/view/IInputContext$Stub;->reportFullscreenMode(Z)V

    .line 225
    const/4 v14, 0x1

    return v14

    .line 223
    .end local v8    # "_arg0":Z
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_5

    .line 229
    .end local v8    # "_arg0":Z
    :sswitch_11
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_6

    .line 232
    sget-object v14, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 237
    :goto_6
    invoke-virtual {p0, v2}, Lcom/android/internal/view/IInputContext$Stub;->sendKeyEvent(Landroid/view/KeyEvent;)V

    .line 238
    const/4 v14, 0x1

    return v14

    .line 235
    :cond_6
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/view/KeyEvent;
    goto :goto_6

    .line 242
    .end local v2    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_12
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 245
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputContext$Stub;->clearMetaKeyStates(I)V

    .line 246
    const/4 v14, 0x1

    return v14

    .line 250
    .end local v1    # "_arg0":I
    :sswitch_13
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_7

    .line 255
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 260
    :goto_7
    invoke-virtual {p0, v7, v10}, Lcom/android/internal/view/IInputContext$Stub;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 261
    const/4 v14, 0x1

    return v14

    .line 258
    :cond_7
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .line 265
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Landroid/os/Bundle;
    :sswitch_14
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 270
    .restart local v9    # "_arg1":I
    invoke-virtual {p0, v1, v9}, Lcom/android/internal/view/IInputContext$Stub;->setComposingRegion(II)V

    .line 271
    const/4 v14, 0x1

    return v14

    .line 275
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_15
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 281
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v12

    .line 282
    .restart local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v12}, Lcom/android/internal/view/IInputContext$Stub;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    .line 283
    const/4 v14, 0x1

    return v14

    .line 287
    .end local v1    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    :sswitch_16
    const-string/jumbo v14, "com.android.internal.view.IInputContext"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 291
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 293
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v12

    .line 294
    .restart local v12    # "_arg2":Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v1, v9, v12}, Lcom/android/internal/view/IInputContext$Stub;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    .line 295
    const/4 v14, 0x1

    return v14

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
