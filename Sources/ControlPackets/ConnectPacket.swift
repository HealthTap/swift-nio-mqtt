//
//  ConnectPacket.swift
//  SwiftNIOMQTT
//
//  Created by Bofei Zhu on 6/18/19.
//  Copyright © 2019 HealthTap Inc. All rights reserved.
//

/// CONNECT Packet – Connection Request
///
/// - Note:
///     After a Network Connection is established by a Client to a Server,
///     the first packet sent from the Client to the Server MUST be a CONNECT packet.
///     A Client can only send the CONNECT packet once over a Network Connection.
///     The Server MUST process a second CONNECT packet sent from a Client as a Protocol Error
///     and close the Network Connection
struct ConnectPacket: VariableHeaderPacket, PayloadPacket {
    
    typealias VariableHeader = ConnectVariableHeader
    typealias Payload = ConnectPayload
    
    static let flags: FixedHeaderFlags = 0
    let fixedHeader: FixedHeader
    
    var variableHeader: ConnectVariableHeader
    var payload: ConnectPayload
}

/// The Variable Header for the CONNECT Packet
struct ConnectVariableHeader {
    let protocolName = "MQTT"
    let protocolVersion: UInt8 = 5
}


struct ConnectPayload {}