.class public abstract Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;
.super Landroid/os/Binder;
.source "IAddressFinderService.java"

# interfaces
.implements Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.AddressFinderService.interfaces.IAddressFinderService"

.field static final TRANSACTION_cancelLookup:I = 0x2

.field static final TRANSACTION_isRequestInProgress:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_requestLookup:I = 0x1

.field static final TRANSACTION_unRegisterCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Lcom/htc/AddressFinderService/interfaces/AddressData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->requestLookup([Lcom/htc/AddressFinderService/interfaces/AddressData;IZ)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->cancelLookup(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->registerCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->unRegisterCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v5, "com.htc.AddressFinderService.interfaces.IAddressFinderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->isRequestInProgress()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
